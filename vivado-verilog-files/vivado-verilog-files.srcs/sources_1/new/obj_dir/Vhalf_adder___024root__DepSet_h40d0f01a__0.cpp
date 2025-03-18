// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vhalf_adder.h for the primary calling header

#include "Vhalf_adder__pch.h"
#include "Vhalf_adder__Syms.h"
#include "Vhalf_adder___024root.h"

VL_INLINE_OPT VlCoroutine Vhalf_adder___024root___eval_initial__TOP__Vtiming__0(Vhalf_adder___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhalf_adder___024root___eval_initial__TOP__Vtiming__0\n"); );
    Vhalf_adder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    VL_PRINTF_MT("-Info: half_adder_tb.v:6: $dumpvar ignored, as Verilated without --trace\n");
    vlSymsp->_vm_contextp__->dumpfile(std::string{"dump.vcd"});
    co_await vlSelfRef.__VdlySched.delay(0x1388ULL, 
                                         nullptr, "half_adder_tb.v", 
                                         11);
    co_await vlSelfRef.__VdlySched.delay(0x1388ULL, 
                                         nullptr, "half_adder_tb.v", 
                                         15);
    co_await vlSelfRef.__VdlySched.delay(0x1388ULL, 
                                         nullptr, "half_adder_tb.v", 
                                         19);
    co_await vlSelfRef.__VdlySched.delay(0x1388ULL, 
                                         nullptr, "half_adder_tb.v", 
                                         23);
    co_await vlSelfRef.__VdlySched.delay(0x1388ULL, 
                                         nullptr, "half_adder_tb.v", 
                                         27);
    co_await vlSelfRef.__VdlySched.delay(0x1388ULL, 
                                         nullptr, "half_adder_tb.v", 
                                         31);
    co_await vlSelfRef.__VdlySched.delay(0x1388ULL, 
                                         nullptr, "half_adder_tb.v", 
                                         35);
    co_await vlSelfRef.__VdlySched.delay(0x1388ULL, 
                                         nullptr, "half_adder_tb.v", 
                                         39);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vhalf_adder___024root___dump_triggers__act(Vhalf_adder___024root* vlSelf);
#endif  // VL_DEBUG

void Vhalf_adder___024root___eval_triggers__act(Vhalf_adder___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhalf_adder___024root___eval_triggers__act\n"); );
    Vhalf_adder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VactTriggered.set(0U, vlSelfRef.__VdlySched.awaitingCurrentTime());
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vhalf_adder___024root___dump_triggers__act(vlSelf);
    }
#endif
}
