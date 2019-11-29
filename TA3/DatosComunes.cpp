//---------------------------------------------------------------------------
#pragma hdrstop
#include "DatosComunes.h"
#include "Proceso.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
static int port1;
static int humedad;
static int Wport1;
static int estadopin;

void Store_Port1(int data){
    port1 = data;
}
int estado_Port1(){
    return (port1);
}

void Store_AI0(int humity){
    if(humity>0){
        humedad=humity*5;
    }
    if(humity<=0){
        humedad=0;
    }
}
int estado_AI0(){
    return (humedad);
}

void Store_DiaNoche(int MaskBit, int StatePin){
    Wport1 = MaskBit;
    estadopin = StatePin;
}
int estado_Wport1(void){
    return (Wport1);
}
int estado_Pin(void){
    return (estadopin);
}
