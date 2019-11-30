//---------------------------------------------------------------------------

#ifndef UsuarioH
#define UsuarioH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
//---------------------------------------------------------------------------
class TVPrincipal : public TForm
{
__published:	// IDE-managed Components
    TTimer *TimerEstadoPuertos;
    TPanel *PIniciarT;
    TPanel *PTimer;
    TLabel *Label1;
    TShape *Shape1;
    TLabel *Label2;
    TShape *Shape2;
    TLabel *Label3;
    TEdit *Edit1;
    TLabel *Label4;
    TShape *Shape3;
    TLabel *Label5;
    TLabel *Label6;
    TLabel *Label7;
    TLabel *Label9;
    TShape *Shape4;
    TLabel *Label10;
    TTimer *TimerLedHumedad;
    TGroupBox *GroupBoxEntradas;
    TLabel *Label8;
    TImage *ImageNoche;
    TImage *ImageDia;
    TImage *ImagePCerrada;
    TImage *ImagePAbierta;
    TCheckBox *CheckBoxDia;
    TCheckBox *CheckBoxPuertaAbierta;
    TScrollBar *ScrollBar1;
    TEdit *Edit2;
    TCheckBox *CheckBoxNoche;
    TCheckBox *CheckBoxPuertaCerrada;
    TTimer *TimerPAbierta;
    TEdit *ContadorPA;
    TLabel *Label11;
    TShape *Shape5;
    TLabel *Label12;
    void __fastcall BotonIniciarTarjeta(TObject *Sender);
    void __fastcall IniciarTimer(TObject *Sender);
    void __fastcall TimerPuertos(TObject *Sender);
    void __fastcall Timer_Led_Humedad(TObject *Sender);
    void __fastcall CheckBoxDiaClick(TObject *Sender);
    void __fastcall CheckBoxNocheClick(TObject *Sender);
    void __fastcall CheckBoxPuertaCerradaClick(TObject *Sender);
    void __fastcall CheckBoxPuertaAbiertaClick(TObject *Sender);
    void __fastcall TimerPuertaAbierta(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TVPrincipal(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TVPrincipal *VPrincipal;
//---------------------------------------------------------------------------
#endif
