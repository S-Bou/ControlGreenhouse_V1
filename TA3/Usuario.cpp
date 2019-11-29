//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
#include "Proceso.h"
#include "DatosComunes.h"
#include "Usuario.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
char DeviceName[20];
TVPrincipal *VPrincipal;
//---------------------------------------------------------------------------
__fastcall TVPrincipal::TVPrincipal(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::BotonIniciarTarjeta(TObject *Sender)
{
    strcpy(DeviceName, VPrincipal->Edit1->Text.c_str());
    process_init(DeviceName);
    PTimer->Enabled=true;
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::IniciarTimer(TObject *Sender)
{
    if(VPrincipal->Tempo1->Enabled == false){
        VPrincipal->Tempo1->Enabled = true;
        VPrincipal->PTimer->Caption = "Timer OFF";
    }else{
        VPrincipal->Tempo1->Enabled = false;
        VPrincipal->PTimer->Color = clBtnFace;
        VPrincipal->PTimer->Caption = "Timer ON";
    }
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::Tempo1Timer(TObject *Sender)
{
    process_write_port0();                          //Set port0
    process_read_port1();                           //Send data to Datos
    int port1 = estado_Port1();

    process_read_ai0();
    int humedad;
    humedad = estado_AI0();
    VPrincipal->ScrollBar1->Position=humedad;
    VPrincipal->Edit2->Text=humedad;
    VPrincipal->Edit2->Text=Edit2->Text+"%";

    if (humedad<20){                                 //State of humity AI0
        VPrincipal->Shape3->Brush->Color=clRed;
    }else{
        VPrincipal->Shape3->Brush->Color=clWhite;
    }

    if ((port1 & 0x01) == 0){                        //State of lamp P0_0
        VPrincipal->Shape1->Brush->Color=clRed;
    }else{
        VPrincipal->Shape1->Brush->Color=clWhite;
    }
    if ((port1 & 0x02) != 0){                        //State of clima P0_1
        VPrincipal->Shape2->Brush->Color=clRed;
    }else{
        VPrincipal->Shape2->Brush->Color=clWhite;
    }

    if(VPrincipal->CheckBoxDiaNoche->Checked==true){  //CheckBox Día/Noche
        Store_DiaNoche(0x01, PIN_ON);
        VPrincipal->ImageNoche->Visible=true;
        process_write_port0();
    }else{
        Store_DiaNoche(0x01, PIN_OFF);
        VPrincipal->ImageNoche->Visible=false;
        process_write_port0();
    }
    if(VPrincipal->CheckBoxDiaNoche->Checked==false){
        VPrincipal->ImageDia->Visible=true;
    }else{
        VPrincipal->ImageDia->Visible=false;
    }
    if(VPrincipal->CheckBoxPuerta->Checked==true){  //CheckBox Puerta
        Store_DiaNoche(0x02, PIN_ON);
        VPrincipal->ImagePAbierta->Visible=true;
        process_write_port0();
    }else{
        Store_DiaNoche(0x02, PIN_OFF);
        VPrincipal->ImagePAbierta->Visible=false;
        process_write_port0();
    }
    if(VPrincipal->CheckBoxPuerta->Checked==false){
        VPrincipal->ImagePCerrada->Visible=true;
    }else{
        VPrincipal->ImagePCerrada->Visible=false;
    }

    if(humedad>80){
        VPrincipal->Tempo2->Enabled = true;
    }else{
        VPrincipal->Tempo2->Enabled = false;
        VPrincipal->Shape4->Brush->Color=clWhite;
    }

    if(VPrincipal->PTimer->Color == clYellow){  //change color of buttton timer
        VPrincipal->PTimer->Color = clLime;
    }else{
        VPrincipal->PTimer->Color = clYellow;
    }
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::TempoAlarma(TObject *Sender)
{
    if(VPrincipal->Shape4->Brush->Color==clWhite){
        VPrincipal->Shape4->Brush->Color=clRed;
    }else{
        VPrincipal->Shape4->Brush->Color=clWhite;
    }
}
//---------------------------------------------------------------------------

