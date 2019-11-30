//---------------------------------------------------------------------------
#pragma hdrstop
#include "Proceso.h"
#include "ss_nidaqmx.h"
#include "DatosComunes.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
int portstate;
TaskHandle Read_Port1;
TaskHandle Write_Port1;
TaskHandle Read_AI0;
// process error reporting --------------------------------------------------
void process_error(int32 code, char *suffix) {
    AnsiString msg;
    char buff[200]; // buffer for the error message
    msg = "Error: ";
    msg = msg + suffix;
    msg = msg + "\n";
    msg = msg + "In: ";
    DAQmxGetErrorString (code, buff, 200);  // get the error message
    msg = msg + buff;
    ShowMessage(msg);   exit(1);     // force the end of the application
}
// process initialization ---------------------------------------------------
void process_init(char *deviceName) {

    char nameP1[20], nameAI0[20];
    strcpy(nameP1, deviceName);
    strcat(nameP1, "/port1");
    strcpy(nameAI0, deviceName);
    strcat(nameAI0, "/ai0");

    int32 daq_error;
    portstate = 0x00;

// First, create a task
daq_error = DAQmxCreateTask("Read task",&Read_Port1);
    if(daq_error != 0)process_error(daq_error,"process_init()->1.0");

daq_error = DAQmxCreateTask("Write task",&Write_Port1);
    if(daq_error != 0)process_error(daq_error,"process_init()->1.1");

daq_error = DAQmxCreateTask("Analog read task", &Read_AI0);
    if(daq_error != 0)process_error(daq_error,"process_init()->1.2");

// Now, add channels to the task
daq_error = DAQmxCreateDIChan(Read_Port1, nameP1,
            "",DAQmx_Val_ChanForAllLines);
    if(daq_error != 0)process_error(daq_error, "process_init()->2.0");

daq_error = DAQmxCreateDOChan(Write_Port1, "Dev3/port1",
            "",DAQmx_Val_ChanForAllLines);
    if(daq_error != 0)process_error(daq_error, "process_init()->2.1");

daq_error = DAQmxCreateAIVoltageChan(Read_AI0, nameAI0,
            "", DAQmx_Val_RSE, 0.0, 10.0, DAQmx_Val_Volts, NULL);
    if(daq_error != 0)process_error(daq_error, "process_init()->2.2");

Store_Port0(0xFF, PIN_OFF);

}
// read port 1 pins and return state -------------------------------------------
void process_read_port1(void) {
    int32 daq_error;
    uInt32 data;

daq_error = DAQmxReadDigitalScalarU32 (Read_Port1, 0.0, &data, NULL);

    if (daq_error != 0) process_error(daq_error,"process_read_port1()");

    Store_Port1(data);
}
// write port 0 pins -----------------------------------------------------------
void process_write_port0(void){
    int bitMask = estado_Wport1();
    int statepin = estado_Pin();
    int32 daq_error;

    if (statepin == PIN_OFF){
        portstate &=~ bitMask; //Pin set 0
    }else{
        portstate |=  bitMask; //Pin set 1
    }

daq_error = DAQmxWriteDigitalScalarU32(Write_Port1, true, 0.0, portstate, NULL);

    if (daq_error != 0) process_error(daq_error,"process_write_port0()");
}
// read ai0 --------------------------------------------------------------------
void process_read_ai0(void) {
    int32 daq_error;
    float64 Humity;

daq_error = DAQmxReadAnalogScalarF64 (Read_AI0, 1.0,&Humity, NULL);
    if (daq_error != 0)process_error(daq_error,"process_read_ai0()");

    Store_AI0(Humity);
}
