//---------------------------------------------------------------------------
#pragma hdrstop
#include "DatosComunes.h"
#include "Proceso.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
static int port1;
static float humedad;
static int port0;
static int estadopin;

void Store_Port1(int data){
    port1 = data;
}
int estado_Port1(){
    return (port1);
}

void Store_AI0(float humity){
    if(humity>0){
        humedad=humity*5;
    }
    if(humity<=0){
        humedad=0;
    }
}
float estado_AI0(){
    return (humedad);
}

void Store_Port0(int MaskBit, int StatePin){
    port0 = MaskBit;
    estadopin = StatePin;
}
int estado_Wport1(void){
    return (port0);
}
int estado_Pin(void){
    return (estadopin);
}
