// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Block_arrayctor_loop_HH_
#define _Block_arrayctor_loop_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Block_arrayctor_loop : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > tmp;
    sc_out< sc_lv<32> > out_r_din;
    sc_in< sc_logic > out_r_full_n;
    sc_out< sc_logic > out_r_write;


    // Module declarations
    Block_arrayctor_loop(sc_module_name name);
    SC_HAS_PROCESS(Block_arrayctor_loop);

    ~Block_arrayctor_loop();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > out_r_blk_n;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_out_r_blk_n();
    void thread_out_r_din();
    void thread_out_r_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
