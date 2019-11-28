//---------------------------------------------------------------------------
#pragma hdrstop
#include "DatosComunes.h"
#include "Proceso.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
static int port1;

void Store_Port1(int data){
    port1 = data;
}
int estado_Port1(){
    return (port1);
}
