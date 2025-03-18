// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vhalf_adder__pch.h"

//============================================================
// Constructors

Vhalf_adder::Vhalf_adder(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new Vhalf_adder__Syms(contextp(), _vcname__, this)}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

Vhalf_adder::Vhalf_adder(const char* _vcname__)
    : Vhalf_adder(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

Vhalf_adder::~Vhalf_adder() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vhalf_adder___024root___eval_debug_assertions(Vhalf_adder___024root* vlSelf);
#endif  // VL_DEBUG
void Vhalf_adder___024root___eval_static(Vhalf_adder___024root* vlSelf);
void Vhalf_adder___024root___eval_initial(Vhalf_adder___024root* vlSelf);
void Vhalf_adder___024root___eval_settle(Vhalf_adder___024root* vlSelf);
void Vhalf_adder___024root___eval(Vhalf_adder___024root* vlSelf);

void Vhalf_adder::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vhalf_adder::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vhalf_adder___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vhalf_adder___024root___eval_static(&(vlSymsp->TOP));
        Vhalf_adder___024root___eval_initial(&(vlSymsp->TOP));
        Vhalf_adder___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vhalf_adder___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vhalf_adder::eventsPending() { return !vlSymsp->TOP.__VdlySched.empty(); }

uint64_t Vhalf_adder::nextTimeSlot() { return vlSymsp->TOP.__VdlySched.nextTimeSlot(); }

//============================================================
// Utilities

const char* Vhalf_adder::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void Vhalf_adder___024root___eval_final(Vhalf_adder___024root* vlSelf);

VL_ATTR_COLD void Vhalf_adder::final() {
    Vhalf_adder___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vhalf_adder::hierName() const { return vlSymsp->name(); }
const char* Vhalf_adder::modelName() const { return "Vhalf_adder"; }
unsigned Vhalf_adder::threads() const { return 1; }
void Vhalf_adder::prepareClone() const { contextp()->prepareClone(); }
void Vhalf_adder::atClone() const {
    contextp()->threadPoolpOnClone();
}
