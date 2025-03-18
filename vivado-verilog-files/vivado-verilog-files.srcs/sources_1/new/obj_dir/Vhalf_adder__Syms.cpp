// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vhalf_adder__pch.h"
#include "Vhalf_adder.h"
#include "Vhalf_adder___024root.h"

// FUNCTIONS
Vhalf_adder__Syms::~Vhalf_adder__Syms()
{
}

Vhalf_adder__Syms::Vhalf_adder__Syms(VerilatedContext* contextp, const char* namep, Vhalf_adder* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup module instances
    , TOP{this, namep}
{
        // Check resources
        Verilated::stackCheck(11);
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-9);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
}
