//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
#include "Proceso.h"
#include "DatosComunes.h"
#include "Usuario.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
int contador=1;
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
    strcpy(DeviceName, VPrincipal->Edit1->Text.c_str());   //Button iniciar
    process_init(DeviceName);
    PTimer->Enabled=true;
    VPrincipal->GroupBoxEntradas->Enabled=true;
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::IniciarTimer(TObject *Sender)
{
    if(VPrincipal->Tempo1->Enabled == false){               //Button timer1
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
    if(VPrincipal->Shape4->Brush->Color==clWhite){            //Timer alarma
        VPrincipal->Shape4->Brush->Color=clRed;               //Parpadeo led
    }else{
        VPrincipal->Shape4->Brush->Color=clWhite;
    }
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::CheckBoxDiaClick(TObject *Sender)
{
    if(VPrincipal->CheckBoxDia->Checked==true){               //CheckBox D�a
        Store_Port0(0x01, PIN_OFF);
        VPrincipal->ImageDia->Visible=true;
        VPrincipal->ImageNoche->Visible=false;
        VPrincipal->CheckBoxNoche->Checked=false;
        process_write_port0();
    }
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::CheckBoxNocheClick(TObject *Sender)
{
    if(VPrincipal->CheckBoxNoche->Checked==true){             //CheckBox Noche
        Store_Port0(0x01, PIN_ON);
        VPrincipal->ImageNoche->Visible=true;
        VPrincipal->ImageDia->Visible=false;
        VPrincipal->CheckBoxDia->Checked=false;
        process_write_port0();
    }
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::CheckBoxPuertaCerradaClick(TObject *Sender)
{
    if(VPrincipal->CheckBoxPuertaCerrada->Checked==true){
        Store_Port0(0x02, PIN_OFF);                   //CheckBox puerta cerrada
        VPrincipal->ImagePAbierta->Visible=false;
        VPrincipal->ImagePCerrada->Visible=true;
        VPrincipal->CheckBoxPuertaAbierta->Checked=false;
        process_write_port0();
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
        Store_Port0(0x02, PIN_ON);                   //CheckBox puerta abierta
        VPrincipal->ImagePAbierta->Visible=true;
        VPrincipal->ImagePCerrada->Visible=false;
        VPrincipal->CheckBoxPuertaCerrada->Checked=false;
        process_write_port0();
    }
    VPrincipal->TimerPAbierta->Enabled=true;
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::TimerPuertaAbierta(TObject *Sender)
{                                                        
    if(contador==6){                                     //Timer alarma puerta
        if(VPrincipal->Shape5->Brush->Color==clWhite){   //Parpadeo led
            VPrincipal->Shape5->Brush->Color=clRed;
            VPrincipal->ContadorPA->Color=clRed;
        }else{
            VPrincipal->Shape5->Brush->Color=clWhite;
            VPrincipal->ContadorPA->Color=clWhite;
        }
    VPrincipal->ContadorPA->Text=contador;
    }
    if(contador<6){
    VPrincipal->ContadorPA->Visible=true;
    VPrincipal->ContadorPA->Text=contador;
    contador++;
    }
}
//---------------------------------------------------------------------------

