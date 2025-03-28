// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vhalf_adder.h for the primary calling header

#ifndef VERILATED_VHALF_ADDER___024ROOT_H_
#define VERILATED_VHALF_ADDER___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vhalf_adder__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vhalf_adder___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ __VactIterCount;
    VlDelayScheduler __VdlySched;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vhalf_adder__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vhalf_adder___024root(Vhalf_adder__Syms* symsp, const char* v__name);
    ~Vhalf_adder___024root();
    VL_UNCOPYABLE(Vhalf_adder___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
