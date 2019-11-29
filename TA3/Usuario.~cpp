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
        VPrincipal->PTimer->Color = clYellow;
        VPrincipal->PTimer->Caption = "Timer OFF";
    }else{
        VPrincipal->Tempo1->Enabled = false;
        VPrincipal->PTimer->Color = clLime;
        VPrincipal->PTimer->Caption = "Timer ON";
    }
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::Tempo1Timer(TObject *Sender)
{
    process_read_port1();
    int port1;
    port1 = estado_Port1();

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
    if ((port1 & 0x02) == 0){                        //State of ventilation P0_1
        VPrincipal->Shape2->Brush->Color=clRed;
    }else{
        VPrincipal->Shape2->Brush->Color=clWhite;
    }

    if(VPrincipal->CheckBoxDiaNoche->Checked==true){
        VPrincipal->ImageNoche->Visible=true;
    }else{VPrincipal->ImageNoche->Visible=false;}
    if(VPrincipal->CheckBoxDiaNoche->Checked==false){
        VPrincipal->ImageDia->Visible=true;
    }else{VPrincipal->ImageDia->Visible=false;}

    if(VPrincipal->PTimer->Color == clYellow){  //change color of buttton timer
        VPrincipal->PTimer->Color = clLime;
    }else{
        VPrincipal->PTimer->Color = clYellow;
    }
}
//---------------------------------------------------------------------------


