// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vhalf_adder.h for the primary calling header

#include "Vhalf_adder__pch.h"
#include "Vhalf_adder___024root.h"

VlCoroutine Vhalf_adder___024root___eval_initial__TOP__Vtiming__0(Vhalf_adder___024root* vlSelf);

void Vhalf_adder___024root___eval_initial(Vhalf_adder___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhalf_adder___024root___eval_initial\n"); );
    Vhalf_adder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vhalf_adder___024root___eval_initial__TOP__Vtiming__0(vlSelf);
}

void Vhalf_adder___024root___eval_act(Vhalf_adder___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhalf_adder___024root___eval_act\n"); );
    Vhalf_adder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

void Vhalf_adder___024root___eval_nba(Vhalf_adder___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhalf_adder___024root___eval_nba\n"); );
    Vhalf_adder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

void Vhalf_adder___024root___timing_resume(Vhalf_adder___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhalf_adder___024root___timing_resume\n"); );
    Vhalf_adder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VactTriggered.word(0U))) {
        vlSelfRef.__VdlySched.resume();
    }
}

void Vhalf_adder___024root___eval_triggers__act(Vhalf_adder___024root* vlSelf);

bool Vhalf_adder___024root___eval_phase__act(Vhalf_adder___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhalf_adder___024root___eval_phase__act\n"); );
    Vhalf_adder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vhalf_adder___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelfRef.__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelfRef.__VactTriggered, vlSelfRef.__VnbaTriggered);
        vlSelfRef.__VnbaTriggered.thisOr(vlSelfRef.__VactTriggered);
        Vhalf_adder___024root___timing_resume(vlSelf);
        Vhalf_adder___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vhalf_adder___024root___eval_phase__nba(Vhalf_adder___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhalf_adder___024root___eval_phase__nba\n"); );
    Vhalf_adder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelfRef.__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vhalf_adder___024root___eval_nba(vlSelf);
        vlSelfRef.__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vhalf_adder___024root___dump_triggers__nba(Vhalf_adder___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vhalf_adder___024root___dump_triggers__act(Vhalf_adder___024root* vlSelf);
#endif  // VL_DEBUG

void Vhalf_adder___024root___eval(Vhalf_adder___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhalf_adder___024root___eval\n"); );
    Vhalf_adder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY(((0x64U < __VnbaIterCount)))) {
#ifdef VL_DEBUG
            Vhalf_adder___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("half_adder_tb.v", 1, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelfRef.__VactIterCount = 0U;
        vlSelfRef.__VactContinue = 1U;
        while (vlSelfRef.__VactContinue) {
            if (VL_UNLIKELY(((0x64U < vlSelfRef.__VactIterCount)))) {
#ifdef VL_DEBUG
                Vhalf_adder___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("half_adder_tb.v", 1, "", "Active region did not converge.");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactContinue = 0U;
            if (Vhalf_adder___024root___eval_phase__act(vlSelf)) {
                vlSelfRef.__VactContinue = 1U;
            }
        }
        if (Vhalf_adder___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vhalf_adder___024root___eval_debug_assertions(Vhalf_adder___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vhalf_adder___024root___eval_debug_assertions\n"); );
    Vhalf_adder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}
#endif  // VL_DEBUG
