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
double redondeo(double);
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
    TEdit *Edit2;
    TCheckBox *CheckBoxNoche;
    TCheckBox *CheckBoxPuertaCerrada;
    TTimer *TimerPAbierta;
    TLabel *Label11;
    TShape *Shape5;
    TLabel *Label12;
    TLabel *Label13;
    TLabel *Label14;
    TLabel *Label15;
    TEdit *ContadorPA;
    TScrollBar *ScrollBar2;
    TLabel *Label16;
    TEdit *Edit3;
    TLabel *Label17;
    TShape *Shape6;
    TLabel *Label18;
    TLabel *Label19;
    TShape *Shape7;
    TShape *Shape8;
    TShape *Shape9;
    TShape *Shape10;
    TImage *Image1;
    TImage *Image2;
    TEdit *ContadorHU;
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
