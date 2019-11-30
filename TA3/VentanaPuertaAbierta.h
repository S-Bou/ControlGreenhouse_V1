//---------------------------------------------------------------------------

#ifndef VentanaPuertaAbiertaH
#define VentanaPuertaAbiertaH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TVAlarmaPuerta : public TForm
{
__published:	// IDE-managed Components
    TButton *BAceptar;
    TButton *BCerrarPuerta;
    TLabel *Label1;
    TLabel *Label2;
    void __fastcall BAceptarClick(TObject *Sender);
    void __fastcall BCerrarPuertaClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TVAlarmaPuerta(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TVAlarmaPuerta *VAlarmaPuerta;
//---------------------------------------------------------------------------
#endif
