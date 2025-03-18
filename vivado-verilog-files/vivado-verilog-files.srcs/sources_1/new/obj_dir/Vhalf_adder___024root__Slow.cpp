// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vhalf_adder.h for the primary calling header

#include "Vhalf_adder__pch.h"
#include "Vhalf_adder__Syms.h"
#include "Vhalf_adder___024root.h"

void Vhalf_adder___024root___ctor_var_reset(Vhalf_adder___024root* vlSelf);

Vhalf_adder___024root::Vhalf_adder___024root(Vhalf_adder__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , __VdlySched{*symsp->_vm_contextp__}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vhalf_adder___024root___ctor_var_reset(this);
}

void Vhalf_adder___024root::__Vconfigure(bool first) {
    (void)first;  // Prevent unused variable warning
}

Vhalf_adder___024root::~Vhalf_adder___024root() {
}
