//---------------------------------------------------------------------------

#ifndef UsuarioH
#define UsuarioH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
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
    TButton *BLed1;
    TButton *BLed2;
    TShape *Shape3;
    TShape *Shape4;
    TButton *BAlternar;
    void __fastcall BotonIniciarTarjeta(TObject *Sender);
    void __fastcall IniciarTimer(TObject *Sender);
    void __fastcall Tempo1Timer(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TVPrincipal(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TVPrincipal *VPrincipal;
//---------------------------------------------------------------------------
#endif
