//---------------------------------------------------------------------------
#pragma hdrstop
#include "DatosComunes.h"
#include "Proceso.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
static int led1, led2;

void StoreLeds(int data){
    led1 = process_read_port1();
    led2 = process_read_port1();
}
int estado_Led1(){
    return (led1);
}
int estado_Led2(){
    return (led2);
}
