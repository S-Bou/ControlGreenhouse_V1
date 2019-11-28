//---------------------------------------------------------------------------
#pragma hdrstop
#include "DatosComunes.h"
#include "Proceso.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
static int led;

void Store_Led(int data){
    led = data;
}
int estado_Led(){
    return (led);
}
