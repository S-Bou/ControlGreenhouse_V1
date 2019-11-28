//---------------------------------------------------------------------------
#pragma hdrstop
#include "Proceso.h"
#include "ss_nidaqmx.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
int portstate;
TaskHandle Read_Port_x;
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

    char nameP1[20];
    strcpy(nameP1, deviceName);
    strcat(nameP1, "/port1");

    int32 daq_error;
    portstate = 0x00;

// First, create a task
daq_error = DAQmxCreateTask("Read task",&Read_Port_x);
    if(daq_error != 0)process_error(daq_error,"process_init()->1.0");

// Now, add channels to the task
daq_error = DAQmxCreateDIChan(Read_Port_x, "Dev3/port1",
            "",DAQmx_Val_ChanForAllLines);
    if(daq_error != 0)process_error(daq_error, "process_init()->2.0");
}
// read port 1 pins and return state -------------------------------------------
int process_read_port1(void) {
    int32 daq_error;
    uInt32 data;

daq_error = DAQmxReadDigitalScalarU32 (read_port1_task, 0.0, &data,NULL);

    if (daq_error != 0) process_error(daq_error,"process_read_port1()");

    return(data);
}
