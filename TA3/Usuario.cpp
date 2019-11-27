//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Usuario.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TVPrincipal *VPrincipal;
//---------------------------------------------------------------------------
__fastcall TVPrincipal::TVPrincipal(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TVPrincipal::BotonIniciarTarjeta(TObject *Sender)
{
    //process_init(NULL);
    Label1->Enabled=true;
    Label2->Enabled=true;
    BLed1->Enabled=true;
    BLed2->Enabled=true;
    BAlternar->Enabled=true;
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
