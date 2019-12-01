//---------------------------------------------------------------------------
#pragma hdrstop
#include "DatosComunes.h"
#include "Proceso.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
static int port1;
static double humedad;
static int port0;
static int estadopin;

void Store_Port1(int data){               //Set data of port1
    port1 = data;
}
int estado_Port1(){                       //Get data of port1
    return (port1);
}

void Store_AI0(float humity){             //Set data of port ai0
    humedad = ((humity*5)+50)+50;

}
double estado_AI0(){                      //Get data of port ai0
    return (humedad);
}

void Store_Port0(int MaskBit, int StatePin){     //Set data of port0
    port0 = MaskBit;
    estadopin = StatePin;
}
int estado_Wport1(void){              //Get data of port0
    return (port0);
}
int estado_Pin(void){                 //Get data of state ON/OFF in port0
    return (estadopin);
}
