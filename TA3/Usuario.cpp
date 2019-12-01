//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
#include "Proceso.h"
#include "DatosComunes.h"
#include "Usuario.h"
#include "VentanaPuertaAbierta.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
int contador=1;
char DeviceName[20];
TVPrincipal *VPrincipal;
TVPrincipal *EsDeNoche;
TVPrincipal *EsDeDia;
TVPrincipal *PuertaAbierta;
TVPrincipal *PuertaCerrada;
TVPrincipal *reinicio;
//---------------------------------------------------------------------------
__fastcall TVPrincipal::TVPrincipal(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::BotonIniciarTarjeta(TObject *Sender)
{
    strcpy(DeviceName, VPrincipal->Edit1->Text.c_str());   //Button iniciar
    process_init(DeviceName);
    PTimer->Enabled=true;
    VPrincipal->GroupBoxEntradas->Enabled=true;
    process_write_ao0(10);
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::IniciarTimer(TObject *Sender)
{
    if(VPrincipal->TimerEstadoPuertos->Enabled == false){ //Button timer ON/OFF
        VPrincipal->TimerEstadoPuertos->Enabled = true;
        VPrincipal->PTimer->Caption = "Timer OFF";
    }else{
        VPrincipal->TimerEstadoPuertos->Enabled = false;
        VPrincipal->PTimer->Color = clBtnFace;
        VPrincipal->PTimer->Caption = "Timer ON";
    }
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::TimerPuertos(TObject *Sender)
{
    process_write_port0();                          //Set port0
    process_read_port1();                           //Send data to Datos
    int port1 = estado_Port1();

    process_read_ai0();
    float humedad;
    humedad = estado_AI0();
    VPrincipal->Edit2->Text=humedad;
    VPrincipal->Edit2->Text=Edit2->Text+"%";
    int humilevel;
    humilevel = humedad*2;
    if (humedad<20){                                 //State of humity AI0
        VPrincipal->Shape8->Brush->Color=clYellow;
        VPrincipal->Shape8->Width=humilevel;
        VPrincipal->Shape3->Brush->Color=clRed;
        Store_Port0(0x04, PIN_OFF);
        process_write_port0();
        VPrincipal->Shape8->Visible=true;
        VPrincipal->Shape9->Visible=false;
        VPrincipal->Shape10->Visible=false;
    }else if(humedad>=20 && humedad<=80){
        VPrincipal->Shape9->Brush->Color=clBlue;
        VPrincipal->Shape9->Width=humilevel;
        VPrincipal->Shape3->Brush->Color=clWhite;
        Store_Port0(0x04, PIN_OFF);
        process_write_port0();
        VPrincipal->Shape8->Visible=false;
        VPrincipal->Shape9->Visible=true;
        VPrincipal->Shape10->Visible=false;
    }else{
        VPrincipal->Shape10->Brush->Color=clRed;
        VPrincipal->Shape10->Width=humilevel;
        VPrincipal->Shape8->Visible=false;
        VPrincipal->Shape9->Visible=false;
        VPrincipal->Shape10->Visible=true;
    }
    if ((port1 & 0x01) == 0){
        CheckBoxNocheClick(EsDeNoche);               //State of lamp P0_0
    }else{
        CheckBoxDiaClick(EsDeDia);
    }
    if ((port1 & 0x02) != 0){                        //State of clima P0_1
        CheckBoxPuertaCerradaClick(PuertaCerrada);
        VPrincipal->ContadorPA->Color=clWhite;
        VPrincipal->Shape2->Brush->Color=clRed;
        VAlarmaPuerta->Close();
    }else{
        CheckBoxPuertaAbiertaClick(PuertaAbierta);
    }
    if(humedad>80){
        VPrincipal->TimerLedHumedad->Enabled = true;
    }else{
        VPrincipal->TimerLedHumedad->Enabled = false;
        VPrincipal->Shape4->Brush->Color=clWhite;
    }

    if(VPrincipal->PTimer->Color == clYellow){  //change color of buttton timer
        VPrincipal->PTimer->Color = clLime;
    }else{
        VPrincipal->PTimer->Color = clYellow;
    }
    VPrincipal->CheckBoxDia->Enabled=false;
    VPrincipal->CheckBoxNoche->Enabled=false;
    VPrincipal->CheckBoxPuertaCerrada->Enabled=false;
    VPrincipal->CheckBoxPuertaAbierta->Enabled=false;
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::Timer_Led_Humedad(TObject *Sender)
{
    if(VPrincipal->Shape4->Brush->Color==clWhite){      //Parpadeo led humedad
        VPrincipal->Shape4->Brush->Color=clRed;
    }else{
        VPrincipal->Shape4->Brush->Color=clWhite;
    }
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::CheckBoxDiaClick(TObject *Sender)
{                                                             
    if(VPrincipal->CheckBoxDia->Checked==true){
        VPrincipal->Shape1->Brush->Color=clWhite;
        Store_Port0(0x01, PIN_OFF);                           //CheckBox Día
        VPrincipal->ImageDia->Visible=true;
        VPrincipal->ImageNoche->Visible=false;
        VPrincipal->CheckBoxNoche->Checked=false;
        process_write_port0();
    }
    if(Sender==EsDeDia){
        VPrincipal->CheckBoxDia->Checked=true;
        VPrincipal->CheckBoxNoche->Checked=false;
    }
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::CheckBoxNocheClick(TObject *Sender)
{
    if(VPrincipal->CheckBoxNoche->Checked==true){
        VPrincipal->Shape1->Brush->Color=clRed;
        Store_Port0(0x01, PIN_ON);                           //CheckBox Noche
        VPrincipal->ImageNoche->Visible=true;
        VPrincipal->ImageDia->Visible=false;
        VPrincipal->CheckBoxDia->Checked=false;
        process_write_port0();
    }
    if(Sender==EsDeDia){
        VPrincipal->CheckBoxDia->Checked=false;
        VPrincipal->CheckBoxNoche->Checked=true;
    }
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::CheckBoxPuertaCerradaClick(TObject *Sender)
{
    if(VPrincipal->CheckBoxPuertaCerrada->Checked==true){
        VPrincipal->Shape2->Brush->Color=clRed;
        Store_Port0(0x02, PIN_ON);                   //CheckBox puerta cerrada
        VPrincipal->ImagePAbierta->Visible=false;
        VPrincipal->ImagePCerrada->Visible=true;
        VPrincipal->CheckBoxPuertaAbierta->Checked=false;
        process_write_port0();
    }
    if(Sender==PuertaCerrada){
        VPrincipal->CheckBoxPuertaCerrada->Checked=true;
        VPrincipal->CheckBoxPuertaAbierta->Checked=false;
    }
    VPrincipal->TimerPAbierta->Enabled=false;
    VPrincipal->ContadorPA->Visible=false;
    VPrincipal->Shape5->Brush->Color=clWhite;
    contador=1;
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::CheckBoxPuertaAbiertaClick(TObject *Sender)
{
    if(VPrincipal->CheckBoxPuertaAbierta->Checked==true){  
        VPrincipal->ImagePAbierta->Visible=true;      //CheckBox puerta abierta
        VPrincipal->ImagePCerrada->Visible=false;
        VPrincipal->CheckBoxPuertaCerrada->Checked=false;
    }
    if(Sender==PuertaAbierta){
        VPrincipal->CheckBoxPuertaCerrada->Checked=false;
        VPrincipal->CheckBoxPuertaAbierta->Checked=true;
    }
    if(VPrincipal->TimerEstadoPuertos->Enabled==true){
    VPrincipal->TimerPAbierta->Enabled=true;
    }
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::TimerPuertaAbierta(TObject *Sender)
{                                                        
    if(contador==6){                                     //Timer alarma puerta
        if(VPrincipal->Shape5->Brush->Color==clWhite){   //Parpadeo led
            VPrincipal->Shape5->Brush->Color=clRed;
            VPrincipal->ContadorPA->Color=clWhite;
            VAlarmaPuerta->Label1->Font->Color=clYellow;
        }else{
            VPrincipal->Shape5->Brush->Color=clWhite;
            VPrincipal->ContadorPA->Color=clRed;
            VAlarmaPuerta->Label1->Font->Color=clBlack;
        }
    Store_Port0(0x02, PIN_OFF);
    VPrincipal->Shape2->Brush->Color=clWhite;
    VPrincipal->ContadorPA->Text=contador;
    VAlarmaPuerta->Show();
    process_write_port0();
    }
    if(Sender==reinicio){
        VPrincipal->Shape5->Brush->Color=clWhite;
        VPrincipal->ContadorPA->Color=clWhite;
        contador=0;
    }
    if(contador<6){
    VPrincipal->ContadorPA->Visible=true;
    VPrincipal->ContadorPA->Text=contador;
    contador++;
    }
}
//---------------------------------------------------------------------------



