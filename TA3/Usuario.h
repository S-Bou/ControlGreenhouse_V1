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
    TTimer *Tempo1;
    TPanel *PIniciarT;
    TPanel *PTimer;
    TLabel *Label1;
    TShape *Shape1;
    TLabel *Label2;
    TShape *Shape2;
    TLabel *Label3;
    TEdit *Edit1;
    TCheckBox *CheckBoxDiaNoche;
    TCheckBox *CheckBoxPuerta;
    TLabel *Label4;
    TShape *Shape3;
    TScrollBar *ScrollBar1;
    TEdit *Edit2;
    TLabel *Label5;
    TLabel *Label6;
    TLabel *Label7;
    TLabel *Label8;
    TLabel *Label9;
    TShape *Shape4;
    TLabel *Label10;
    TImage *ImageNoche;
    TImage *ImageDia;
    TImage *ImagePCerrada;
    TImage *ImagePAbierta;
    TTimer *Tempo2;
    void __fastcall BotonIniciarTarjeta(TObject *Sender);
    void __fastcall IniciarTimer(TObject *Sender);
    void __fastcall Tempo1Timer(TObject *Sender);
    void __fastcall TempoAlarma(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TVPrincipal(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TVPrincipal *VPrincipal;
//---------------------------------------------------------------------------
#endif
