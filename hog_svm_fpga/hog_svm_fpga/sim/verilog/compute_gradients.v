// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module compute_gradients (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        image_V_address0,
        image_V_ce0,
        image_V_q0,
        image_V_address1,
        image_V_ce1,
        image_V_q1,
        grad_vote_magnitude_s_address0,
        grad_vote_magnitude_s_ce0,
        grad_vote_magnitude_s_we0,
        grad_vote_magnitude_s_d0,
        grad_vote_bin_V_address0,
        grad_vote_bin_V_ce0,
        grad_vote_bin_V_we0,
        grad_vote_bin_V_d0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_pp0_stage0 = 4'd2;
parameter    ap_ST_fsm_pp0_stage1 = 4'd4;
parameter    ap_ST_fsm_state8 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] image_V_address0;
output   image_V_ce0;
input  [7:0] image_V_q0;
output  [11:0] image_V_address1;
output   image_V_ce1;
input  [7:0] image_V_q1;
output  [11:0] grad_vote_magnitude_s_address0;
output   grad_vote_magnitude_s_ce0;
output   grad_vote_magnitude_s_we0;
output  [25:0] grad_vote_magnitude_s_d0;
output  [11:0] grad_vote_bin_V_address0;
output   grad_vote_bin_V_ce0;
output   grad_vote_bin_V_we0;
output  [3:0] grad_vote_bin_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[11:0] image_V_address0;
reg image_V_ce0;
reg[11:0] image_V_address1;
reg image_V_ce1;
reg grad_vote_magnitude_s_ce0;
reg grad_vote_magnitude_s_we0;
reg grad_vote_bin_V_ce0;
reg grad_vote_bin_V_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [12:0] indvar_flatten_reg_171;
reg   [6:0] i_reg_182;
reg   [6:0] j_reg_193;
wire   [0:0] exitcond_flatten_fu_204_p2;
reg   [0:0] exitcond_flatten_reg_930;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state6_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond_flatten_reg_930_pp0_iter1_reg;
reg   [0:0] exitcond_flatten_reg_930_pp0_iter2_reg;
wire   [12:0] indvar_flatten_next_fu_210_p2;
reg   [12:0] indvar_flatten_next_reg_934;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] exitcond_fu_216_p2;
reg   [0:0] exitcond_reg_939;
wire   [6:0] j_mid2_fu_222_p3;
reg   [6:0] j_mid2_reg_945;
wire   [6:0] p_v_fu_236_p3;
reg   [6:0] p_v_reg_953;
wire   [0:0] tmp_71_mid1_fu_244_p2;
reg   [0:0] tmp_71_mid1_reg_959;
wire   [0:0] tmp_41_fu_250_p2;
reg   [0:0] tmp_41_reg_964;
wire   [0:0] tmp_73_mid1_fu_282_p2;
reg   [0:0] tmp_73_mid1_reg_969;
wire   [0:0] tmp_s_fu_288_p2;
reg   [0:0] tmp_s_reg_974;
wire   [13:0] tmp_77_cast_fu_320_p1;
reg   [13:0] tmp_77_cast_reg_979;
wire   [0:0] tmp_72_fu_367_p2;
reg   [0:0] tmp_72_reg_994;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_state5_pp0_stage1_iter1;
wire    ap_block_state7_pp0_stage1_iter2;
wire    ap_block_pp0_stage1_11001;
wire   [6:0] j_2_fu_372_p2;
reg   [6:0] j_2_reg_999;
wire   [0:0] tmp_74_fu_392_p2;
reg   [0:0] tmp_74_reg_1009;
wire   [13:0] tmp_93_fu_417_p2;
reg   [13:0] tmp_93_reg_1019;
reg   [13:0] tmp_93_reg_1019_pp0_iter1_reg;
wire   [8:0] r_V_1_fu_446_p2;
reg   [8:0] r_V_1_reg_1024;
reg   [0:0] tmp_107_reg_1030;
reg   [0:0] tmp_109_reg_1035;
wire   [8:0] gradX_fu_510_p3;
reg   [8:0] gradX_reg_1040;
wire   [8:0] gradY_fu_523_p3;
reg   [8:0] gradY_reg_1052;
wire   [0:0] quad_fu_537_p2;
reg   [0:0] quad_reg_1060;
reg   [0:0] quad_reg_1060_pp0_iter2_reg;
wire   [0:0] tmp_82_fu_542_p2;
reg   [0:0] tmp_82_reg_1068;
wire   [8:0] p_Val2_s_fu_546_p3;
reg   [8:0] p_Val2_s_reg_1074;
wire   [25:0] r1_V_fu_624_p2;
reg   [25:0] r1_V_reg_1079;
wire   [0:0] tmp_83_i_fu_782_p2;
reg   [0:0] tmp_83_i_reg_1085;
wire   [0:0] tmp_84_i_fu_788_p2;
reg   [0:0] tmp_84_i_reg_1092;
wire   [0:0] tmp_85_i_fu_794_p2;
reg   [0:0] tmp_85_i_reg_1098;
wire   [0:0] tmp_87_i_fu_800_p2;
reg   [0:0] tmp_87_i_reg_1104;
reg    ap_block_state1;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage1_subdone;
reg    ap_enable_reg_pp0_iter2;
reg   [12:0] ap_phi_mux_indvar_flatten_phi_fu_175_p4;
wire    ap_block_pp0_stage0;
reg   [6:0] ap_phi_mux_i_phi_fu_186_p4;
reg   [6:0] ap_phi_mux_j_phi_fu_197_p4;
wire   [63:0] tmp_99_cast_fu_330_p1;
wire  signed [63:0] tmp_100_cast_fu_341_p1;
wire   [63:0] tmp_97_cast_fu_387_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_98_cast_fu_412_p1;
wire   [63:0] tmp_101_cast_fu_806_p1;
wire   [6:0] i_s_fu_230_p2;
wire   [6:0] i_4_mid1_fu_256_p2;
wire   [6:0] tmp_104_fu_262_p3;
wire   [12:0] tmp_105_fu_270_p3;
wire   [6:0] tmp_86_fu_294_p2;
wire   [6:0] tmp_87_fu_300_p3;
wire   [12:0] tmp_88_fu_308_p3;
wire   [13:0] tmp_93_cast_fu_278_p1;
wire   [13:0] tmp_91_fu_324_p2;
wire  signed [13:0] tmp_96_cast_fu_316_p1;
wire   [13:0] tmp_92_fu_335_p2;
wire   [12:0] tmp_96_fu_346_p3;
wire   [13:0] tmp_73_cast_fu_377_p1;
wire   [13:0] tmp_91_cast_fu_353_p1;
wire   [13:0] tmp_89_fu_381_p2;
wire   [6:0] tmp_75_fu_397_p2;
wire   [13:0] tmp_76_cast_fu_402_p1;
wire   [13:0] tmp_90_fu_406_p2;
wire   [0:0] tmp_71_mid2_fu_357_p3;
wire   [0:0] tmp_73_mid2_fu_362_p3;
wire   [7:0] tmp_139_load_fu_422_p3;
wire   [7:0] tmp_141_load_fu_430_p3;
wire   [8:0] lhs_V_1_fu_438_p1;
wire   [8:0] rhs_V_1_fu_442_p1;
wire   [7:0] tmp_133_load_fu_468_p3;
wire   [7:0] tmp_137_load_fu_475_p3;
wire   [8:0] lhs_V_fu_482_p1;
wire   [8:0] rhs_V_fu_486_p1;
wire   [8:0] r_V_fu_490_p2;
wire   [0:0] tmp_106_fu_496_p3;
wire   [8:0] tmp_79_fu_504_p2;
wire   [8:0] p_Val2_39_fu_518_p2;
wire   [0:0] tmp_108_fu_529_p3;
wire   [21:0] p_Val2_1_fu_551_p3;
wire   [22:0] p_Val2_5_fu_563_p3;
wire   [23:0] p_Val2_6_fu_575_p3;
wire   [8:0] tmp_94_fu_587_p3;
wire   [23:0] p_Val2_7_fu_592_p3;
wire   [23:0] p_Val2_15_cast_fu_571_p1;
wire   [23:0] p_Val2_56_cast_fu_559_p1;
wire   [23:0] addconv_fu_604_p2;
wire   [24:0] addconv_cast_fu_610_p1;
wire   [24:0] p_Val2_16_cast_fu_583_p1;
wire   [24:0] addconv2_fu_614_p2;
wire   [25:0] addconv2_cast_fu_620_p1;
wire  signed [25:0] p_Val2_17_cast_fu_600_p1;
wire   [24:0] tmp_95_fu_630_p3;
wire  signed [26:0] dy_V_fu_637_p1;
wire   [21:0] tmp_61_i_fu_649_p3;
wire  signed [28:0] tmp_61_i_cast_fu_656_p1;
wire   [20:0] tmp_62_i_fu_664_p3;
wire  signed [27:0] tmp_62_i_cast_fu_671_p1;
wire   [29:0] p_Val2_50_cast_i_fu_660_p1;
wire   [29:0] p_Val2_12_cast_i_fu_679_p1;
wire   [22:0] tmp_63_i_fu_689_p3;
wire  signed [29:0] tmp_63_i_cast_fu_696_p1;
wire   [23:0] tmp_64_i_fu_704_p3;
wire  signed [30:0] tmp_64_i_cast_fu_711_p1;
wire   [18:0] tmp_65_i_fu_719_p3;
wire  signed [25:0] tmp_65_i_cast_fu_726_p1;
wire   [28:0] p_Val2_12_i_cast_fu_675_p1;
wire   [28:0] p_Val2_17_i_cast_fu_730_p1;
wire   [28:0] tmp1_fu_734_p2;
wire   [31:0] tmp1_cast_fu_740_p1;
wire   [31:0] p_Val2_41_fu_715_p1;
wire   [28:0] tmp2_fu_750_p2;
wire   [29:0] tmp2_cast_fu_756_p1;
wire   [30:0] p_Val2_15_i_cast_fu_700_p1;
wire   [30:0] tmp3_fu_766_p2;
wire   [31:0] tmp3_cast_fu_772_p1;
wire   [29:0] dy_V_cast15_cast_i_fu_641_p1;
wire   [29:0] addconv_i_fu_683_p2;
wire   [31:0] dy_V_cast_i_fu_645_p1;
wire   [31:0] p_Val2_i_fu_744_p2;
wire   [29:0] p_Val2_13_i_fu_760_p2;
wire   [31:0] p_Val2_14_i_fu_776_p2;
wire   [24:0] a_V_fu_811_p3;
wire   [25:0] a_V_cast_fu_818_p1;
wire   [0:0] tmp_83_fu_822_p2;
wire   [0:0] sel_tmp_i_fu_863_p2;
wire   [0:0] sel_tmp1_i_fu_868_p2;
wire   [3:0] tmp_86_i_fu_835_p3;
wire   [3:0] tmp_97_cast_i_cast_c_fu_856_p3;
wire   [0:0] sel_tmp3_i_fu_881_p2;
wire   [0:0] sel_tmp4_i_fu_885_p2;
wire   [0:0] sel_tmp5_i_fu_890_p2;
wire   [3:0] tmp_95_cast_i_cast_c_fu_842_p3;
wire   [3:0] sel_tmp2_i_fu_873_p3;
wire   [0:0] tmp4_fu_904_p2;
wire   [0:0] sel_tmp9_i_fu_908_p2;
wire   [3:0] tmp_96_cast_i_cast_c_fu_849_p3;
wire   [3:0] sel_tmp6_i_fu_896_p3;
wire   [3:0] sel_tmp10_i_fu_914_p3;
wire    ap_CS_fsm_state8;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_930 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_reg_182 <= p_v_reg_953;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_182 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_930 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        indvar_flatten_reg_171 <= indvar_flatten_next_reg_934;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_171 <= 13'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_930 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        j_reg_193 <= j_2_reg_999;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        j_reg_193 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_flatten_reg_930 <= exitcond_flatten_fu_204_p2;
        exitcond_flatten_reg_930_pp0_iter1_reg <= exitcond_flatten_reg_930;
        exitcond_flatten_reg_930_pp0_iter2_reg <= exitcond_flatten_reg_930_pp0_iter1_reg;
        quad_reg_1060_pp0_iter2_reg <= quad_reg_1060;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_204_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        exitcond_reg_939 <= exitcond_fu_216_p2;
        j_mid2_reg_945 <= j_mid2_fu_222_p3;
        tmp_41_reg_964 <= tmp_41_fu_250_p2;
        tmp_71_mid1_reg_959 <= tmp_71_mid1_fu_244_p2;
        tmp_73_mid1_reg_969 <= tmp_73_mid1_fu_282_p2;
        tmp_77_cast_reg_979[6 : 0] <= tmp_77_cast_fu_320_p1[6 : 0];
        tmp_s_reg_974 <= tmp_s_fu_288_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_930 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        gradX_reg_1040 <= gradX_fu_510_p3;
        gradY_reg_1052 <= gradY_fu_523_p3;
        quad_reg_1060 <= quad_fu_537_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_next_reg_934 <= indvar_flatten_next_fu_210_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_930 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        j_2_reg_999 <= j_2_fu_372_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_930_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_Val2_s_reg_1074 <= p_Val2_s_fu_546_p3;
        r1_V_reg_1079[25 : 13] <= r1_V_fu_624_p2[25 : 13];
        tmp_83_i_reg_1085 <= tmp_83_i_fu_782_p2;
        tmp_84_i_reg_1092 <= tmp_84_i_fu_788_p2;
        tmp_85_i_reg_1098 <= tmp_85_i_fu_794_p2;
        tmp_87_i_reg_1104 <= tmp_87_i_fu_800_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_204_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_v_reg_953 <= p_v_fu_236_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_930 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        r_V_1_reg_1024 <= r_V_1_fu_446_p2;
        tmp_107_reg_1030 <= r_V_1_fu_446_p2[32'd8];
        tmp_109_reg_1035 <= r_V_1_fu_446_p2[32'd8];
        tmp_72_reg_994 <= tmp_72_fu_367_p2;
        tmp_74_reg_1009 <= tmp_74_fu_392_p2;
        tmp_93_reg_1019 <= tmp_93_fu_417_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_930_pp0_iter1_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        tmp_82_reg_1068 <= tmp_82_fu_542_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        tmp_93_reg_1019_pp0_iter1_reg <= tmp_93_reg_1019;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_204_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_930 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_phi_fu_186_p4 = p_v_reg_953;
    end else begin
        ap_phi_mux_i_phi_fu_186_p4 = i_reg_182;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_930 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_indvar_flatten_phi_fu_175_p4 = indvar_flatten_next_reg_934;
    end else begin
        ap_phi_mux_indvar_flatten_phi_fu_175_p4 = indvar_flatten_reg_171;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_930 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_j_phi_fu_197_p4 = j_2_reg_999;
    end else begin
        ap_phi_mux_j_phi_fu_197_p4 = j_reg_193;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        grad_vote_bin_V_ce0 = 1'b1;
    end else begin
        grad_vote_bin_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_930_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        grad_vote_bin_V_we0 = 1'b1;
    end else begin
        grad_vote_bin_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        grad_vote_magnitude_s_ce0 = 1'b1;
    end else begin
        grad_vote_magnitude_s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_930_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        grad_vote_magnitude_s_we0 = 1'b1;
    end else begin
        grad_vote_magnitude_s_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            image_V_address0 = tmp_97_cast_fu_387_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            image_V_address0 = tmp_99_cast_fu_330_p1;
        end else begin
            image_V_address0 = 'bx;
        end
    end else begin
        image_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            image_V_address1 = tmp_98_cast_fu_412_p1;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            image_V_address1 = tmp_100_cast_fu_341_p1;
        end else begin
            image_V_address1 = 'bx;
        end
    end else begin
        image_V_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        image_V_ce0 = 1'b1;
    end else begin
        image_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        image_V_ce1 = 1'b1;
    end else begin
        image_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond_flatten_fu_204_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((exitcond_flatten_fu_204_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((~((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_V_cast_fu_818_p1 = a_V_fu_811_p3;

assign a_V_fu_811_p3 = {{p_Val2_s_reg_1074}, {16'd0}};

assign addconv2_cast_fu_620_p1 = addconv2_fu_614_p2;

assign addconv2_fu_614_p2 = (addconv_cast_fu_610_p1 + p_Val2_16_cast_fu_583_p1);

assign addconv_cast_fu_610_p1 = addconv_fu_604_p2;

assign addconv_fu_604_p2 = (p_Val2_15_cast_fu_571_p1 + p_Val2_56_cast_fu_559_p1);

assign addconv_i_fu_683_p2 = (p_Val2_50_cast_i_fu_660_p1 + p_Val2_12_cast_i_fu_679_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign dy_V_cast15_cast_i_fu_641_p1 = $unsigned(dy_V_fu_637_p1);

assign dy_V_cast_i_fu_645_p1 = $unsigned(dy_V_fu_637_p1);

assign dy_V_fu_637_p1 = $signed(tmp_95_fu_630_p3);

assign exitcond_flatten_fu_204_p2 = ((ap_phi_mux_indvar_flatten_phi_fu_175_p4 == 13'd4096) ? 1'b1 : 1'b0);

assign exitcond_fu_216_p2 = ((ap_phi_mux_j_phi_fu_197_p4 == 7'd64) ? 1'b1 : 1'b0);

assign gradX_fu_510_p3 = ((tmp_106_fu_496_p3[0:0] === 1'b1) ? tmp_79_fu_504_p2 : r_V_fu_490_p2);

assign gradY_fu_523_p3 = ((tmp_107_reg_1030[0:0] === 1'b1) ? p_Val2_39_fu_518_p2 : r_V_1_reg_1024);

assign grad_vote_bin_V_address0 = tmp_101_cast_fu_806_p1;

assign grad_vote_bin_V_d0 = ((tmp_83_i_reg_1085[0:0] === 1'b1) ? sel_tmp10_i_fu_914_p3 : 4'd0);

assign grad_vote_magnitude_s_address0 = tmp_101_cast_fu_806_p1;

assign grad_vote_magnitude_s_d0 = ((tmp_83_fu_822_p2[0:0] === 1'b1) ? r1_V_reg_1079 : a_V_cast_fu_818_p1);

assign i_4_mid1_fu_256_p2 = (ap_phi_mux_i_phi_fu_186_p4 + 7'd2);

assign i_s_fu_230_p2 = (ap_phi_mux_i_phi_fu_186_p4 + 7'd1);

assign indvar_flatten_next_fu_210_p2 = (ap_phi_mux_indvar_flatten_phi_fu_175_p4 + 13'd1);

assign j_2_fu_372_p2 = (j_mid2_reg_945 + 7'd1);

assign j_mid2_fu_222_p3 = ((exitcond_fu_216_p2[0:0] === 1'b1) ? 7'd0 : ap_phi_mux_j_phi_fu_197_p4);

assign lhs_V_1_fu_438_p1 = tmp_139_load_fu_422_p3;

assign lhs_V_fu_482_p1 = tmp_133_load_fu_468_p3;

assign p_Val2_12_cast_i_fu_679_p1 = $unsigned(tmp_62_i_cast_fu_671_p1);

assign p_Val2_12_i_cast_fu_675_p1 = $unsigned(tmp_62_i_cast_fu_671_p1);

assign p_Val2_13_i_fu_760_p2 = (tmp2_cast_fu_756_p1 + p_Val2_50_cast_i_fu_660_p1);

assign p_Val2_14_i_fu_776_p2 = (tmp3_cast_fu_772_p1 + p_Val2_41_fu_715_p1);

assign p_Val2_15_cast_fu_571_p1 = p_Val2_5_fu_563_p3;

assign p_Val2_15_i_cast_fu_700_p1 = $unsigned(tmp_63_i_cast_fu_696_p1);

assign p_Val2_16_cast_fu_583_p1 = p_Val2_6_fu_575_p3;

assign p_Val2_17_cast_fu_600_p1 = $signed(p_Val2_7_fu_592_p3);

assign p_Val2_17_i_cast_fu_730_p1 = $unsigned(tmp_65_i_cast_fu_726_p1);

assign p_Val2_1_fu_551_p3 = {{p_Val2_s_fu_546_p3}, {13'd0}};

assign p_Val2_39_fu_518_p2 = (9'd0 - r_V_1_reg_1024);

assign p_Val2_41_fu_715_p1 = $unsigned(tmp_64_i_cast_fu_711_p1);

assign p_Val2_50_cast_i_fu_660_p1 = $unsigned(tmp_61_i_cast_fu_656_p1);

assign p_Val2_56_cast_fu_559_p1 = p_Val2_1_fu_551_p3;

assign p_Val2_5_fu_563_p3 = {{p_Val2_s_fu_546_p3}, {14'd0}};

assign p_Val2_6_fu_575_p3 = {{p_Val2_s_fu_546_p3}, {15'd0}};

assign p_Val2_7_fu_592_p3 = {{tmp_94_fu_587_p3}, {15'd0}};

assign p_Val2_i_fu_744_p2 = (tmp1_cast_fu_740_p1 + p_Val2_41_fu_715_p1);

assign p_Val2_s_fu_546_p3 = ((tmp_82_reg_1068[0:0] === 1'b1) ? gradX_reg_1040 : gradY_reg_1052);

assign p_v_fu_236_p3 = ((exitcond_fu_216_p2[0:0] === 1'b1) ? i_s_fu_230_p2 : ap_phi_mux_i_phi_fu_186_p4);

assign quad_fu_537_p2 = (tmp_109_reg_1035 ^ tmp_108_fu_529_p3);

assign r1_V_fu_624_p2 = ($signed(addconv2_cast_fu_620_p1) + $signed(p_Val2_17_cast_fu_600_p1));

assign r_V_1_fu_446_p2 = (lhs_V_1_fu_438_p1 - rhs_V_1_fu_442_p1);

assign r_V_fu_490_p2 = (lhs_V_fu_482_p1 - rhs_V_fu_486_p1);

assign rhs_V_1_fu_442_p1 = tmp_141_load_fu_430_p3;

assign rhs_V_fu_486_p1 = tmp_137_load_fu_475_p3;

assign sel_tmp10_i_fu_914_p3 = ((sel_tmp9_i_fu_908_p2[0:0] === 1'b1) ? tmp_96_cast_i_cast_c_fu_849_p3 : sel_tmp6_i_fu_896_p3);

assign sel_tmp1_i_fu_868_p2 = (tmp_83_i_reg_1085 & sel_tmp_i_fu_863_p2);

assign sel_tmp2_i_fu_873_p3 = ((sel_tmp1_i_fu_868_p2[0:0] === 1'b1) ? tmp_86_i_fu_835_p3 : tmp_97_cast_i_cast_c_fu_856_p3);

assign sel_tmp3_i_fu_881_p2 = (tmp_84_i_reg_1092 & tmp_83_i_reg_1085);

assign sel_tmp4_i_fu_885_p2 = (tmp_85_i_reg_1098 ^ 1'd1);

assign sel_tmp5_i_fu_890_p2 = (sel_tmp4_i_fu_885_p2 & sel_tmp3_i_fu_881_p2);

assign sel_tmp6_i_fu_896_p3 = ((sel_tmp5_i_fu_890_p2[0:0] === 1'b1) ? tmp_95_cast_i_cast_c_fu_842_p3 : sel_tmp2_i_fu_873_p3);

assign sel_tmp9_i_fu_908_p2 = (tmp4_fu_904_p2 & sel_tmp3_i_fu_881_p2);

assign sel_tmp_i_fu_863_p2 = (tmp_84_i_reg_1092 ^ 1'd1);

assign tmp1_cast_fu_740_p1 = tmp1_fu_734_p2;

assign tmp1_fu_734_p2 = (p_Val2_12_i_cast_fu_675_p1 + p_Val2_17_i_cast_fu_730_p1);

assign tmp2_cast_fu_756_p1 = tmp2_fu_750_p2;

assign tmp2_fu_750_p2 = (p_Val2_12_i_cast_fu_675_p1 + 29'd65536);

assign tmp3_cast_fu_772_p1 = tmp3_fu_766_p2;

assign tmp3_fu_766_p2 = (p_Val2_15_i_cast_fu_700_p1 + 31'd131072);

assign tmp4_fu_904_p2 = (tmp_87_i_reg_1104 & tmp_85_i_reg_1098);

assign tmp_100_cast_fu_341_p1 = $signed(tmp_92_fu_335_p2);

assign tmp_101_cast_fu_806_p1 = tmp_93_reg_1019_pp0_iter1_reg;

assign tmp_104_fu_262_p3 = ((exitcond_fu_216_p2[0:0] === 1'b1) ? i_4_mid1_fu_256_p2 : i_s_fu_230_p2);

assign tmp_105_fu_270_p3 = {{tmp_104_fu_262_p3}, {6'd0}};

assign tmp_106_fu_496_p3 = r_V_fu_490_p2[32'd8];

assign tmp_108_fu_529_p3 = r_V_fu_490_p2[32'd8];

assign tmp_133_load_fu_468_p3 = ((tmp_72_reg_994[0:0] === 1'b1) ? image_V_q0 : 8'd0);

assign tmp_137_load_fu_475_p3 = ((tmp_74_reg_1009[0:0] === 1'b1) ? 8'd0 : image_V_q1);

assign tmp_139_load_fu_422_p3 = ((tmp_71_mid2_fu_357_p3[0:0] === 1'b1) ? image_V_q0 : 8'd0);

assign tmp_141_load_fu_430_p3 = ((tmp_73_mid2_fu_362_p3[0:0] === 1'b1) ? 8'd0 : image_V_q1);

assign tmp_41_fu_250_p2 = ((ap_phi_mux_i_phi_fu_186_p4 < 7'd63) ? 1'b1 : 1'b0);

assign tmp_61_i_cast_fu_656_p1 = $signed(tmp_61_i_fu_649_p3);

assign tmp_61_i_fu_649_p3 = {{gradX_reg_1040}, {13'd0}};

assign tmp_62_i_cast_fu_671_p1 = $signed(tmp_62_i_fu_664_p3);

assign tmp_62_i_fu_664_p3 = {{gradX_reg_1040}, {12'd0}};

assign tmp_63_i_cast_fu_696_p1 = $signed(tmp_63_i_fu_689_p3);

assign tmp_63_i_fu_689_p3 = {{gradX_reg_1040}, {14'd0}};

assign tmp_64_i_cast_fu_711_p1 = $signed(tmp_64_i_fu_704_p3);

assign tmp_64_i_fu_704_p3 = {{gradX_reg_1040}, {15'd0}};

assign tmp_65_i_cast_fu_726_p1 = $signed(tmp_65_i_fu_719_p3);

assign tmp_65_i_fu_719_p3 = {{gradX_reg_1040}, {10'd0}};

assign tmp_71_mid1_fu_244_p2 = ((i_s_fu_230_p2 < 7'd63) ? 1'b1 : 1'b0);

assign tmp_71_mid2_fu_357_p3 = ((exitcond_reg_939[0:0] === 1'b1) ? tmp_71_mid1_reg_959 : tmp_41_reg_964);

assign tmp_72_fu_367_p2 = ((j_mid2_reg_945 < 7'd63) ? 1'b1 : 1'b0);

assign tmp_73_cast_fu_377_p1 = j_2_fu_372_p2;

assign tmp_73_mid1_fu_282_p2 = ((i_s_fu_230_p2 == 7'd0) ? 1'b1 : 1'b0);

assign tmp_73_mid2_fu_362_p3 = ((exitcond_reg_939[0:0] === 1'b1) ? tmp_73_mid1_reg_969 : tmp_s_reg_974);

assign tmp_74_fu_392_p2 = ((j_mid2_reg_945 == 7'd0) ? 1'b1 : 1'b0);

assign tmp_75_fu_397_p2 = ($signed(j_mid2_reg_945) + $signed(7'd127));

assign tmp_76_cast_fu_402_p1 = tmp_75_fu_397_p2;

assign tmp_77_cast_fu_320_p1 = j_mid2_fu_222_p3;

assign tmp_79_fu_504_p2 = (9'd0 - r_V_fu_490_p2);

assign tmp_82_fu_542_p2 = (($signed(gradX_reg_1040) > $signed(gradY_reg_1052)) ? 1'b1 : 1'b0);

assign tmp_83_fu_822_p2 = (($signed(r1_V_reg_1079) > $signed(a_V_cast_fu_818_p1)) ? 1'b1 : 1'b0);

assign tmp_83_i_fu_782_p2 = (($signed(dy_V_cast15_cast_i_fu_641_p1) > $signed(addconv_i_fu_683_p2)) ? 1'b1 : 1'b0);

assign tmp_84_i_fu_788_p2 = (($signed(dy_V_cast_i_fu_645_p1) > $signed(p_Val2_i_fu_744_p2)) ? 1'b1 : 1'b0);

assign tmp_85_i_fu_794_p2 = (($signed(dy_V_cast15_cast_i_fu_641_p1) > $signed(p_Val2_13_i_fu_760_p2)) ? 1'b1 : 1'b0);

assign tmp_86_fu_294_p2 = ($signed(ap_phi_mux_i_phi_fu_186_p4) + $signed(7'd127));

assign tmp_86_i_fu_835_p3 = ((quad_reg_1060_pp0_iter2_reg[0:0] === 1'b1) ? 4'd8 : 4'd1);

assign tmp_87_fu_300_p3 = ((exitcond_fu_216_p2[0:0] === 1'b1) ? ap_phi_mux_i_phi_fu_186_p4 : tmp_86_fu_294_p2);

assign tmp_87_i_fu_800_p2 = (($signed(dy_V_cast_i_fu_645_p1) > $signed(p_Val2_14_i_fu_776_p2)) ? 1'b1 : 1'b0);

assign tmp_88_fu_308_p3 = {{tmp_87_fu_300_p3}, {6'd0}};

assign tmp_89_fu_381_p2 = (tmp_73_cast_fu_377_p1 + tmp_91_cast_fu_353_p1);

assign tmp_90_fu_406_p2 = (tmp_76_cast_fu_402_p1 + tmp_91_cast_fu_353_p1);

assign tmp_91_cast_fu_353_p1 = tmp_96_fu_346_p3;

assign tmp_91_fu_324_p2 = (tmp_77_cast_fu_320_p1 + tmp_93_cast_fu_278_p1);

assign tmp_92_fu_335_p2 = ($signed(tmp_77_cast_fu_320_p1) + $signed(tmp_96_cast_fu_316_p1));

assign tmp_93_cast_fu_278_p1 = tmp_105_fu_270_p3;

assign tmp_93_fu_417_p2 = (tmp_77_cast_reg_979 + tmp_91_cast_fu_353_p1);

assign tmp_94_fu_587_p3 = ((tmp_82_reg_1068[0:0] === 1'b1) ? gradY_reg_1052 : gradX_reg_1040);

assign tmp_95_cast_i_cast_c_fu_842_p3 = ((quad_reg_1060_pp0_iter2_reg[0:0] === 1'b1) ? 4'd7 : 4'd2);

assign tmp_95_fu_630_p3 = {{gradY_reg_1052}, {16'd0}};

assign tmp_96_cast_fu_316_p1 = $signed(tmp_88_fu_308_p3);

assign tmp_96_cast_i_cast_c_fu_849_p3 = ((quad_reg_1060_pp0_iter2_reg[0:0] === 1'b1) ? 4'd5 : 4'd4);

assign tmp_96_fu_346_p3 = {{p_v_reg_953}, {6'd0}};

assign tmp_97_cast_fu_387_p1 = tmp_89_fu_381_p2;

assign tmp_97_cast_i_cast_c_fu_856_p3 = ((quad_reg_1060_pp0_iter2_reg[0:0] === 1'b1) ? 4'd6 : 4'd3);

assign tmp_98_cast_fu_412_p1 = tmp_90_fu_406_p2;

assign tmp_99_cast_fu_330_p1 = tmp_91_fu_324_p2;

assign tmp_s_fu_288_p2 = ((ap_phi_mux_i_phi_fu_186_p4 == 7'd0) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    tmp_77_cast_reg_979[13:7] <= 7'b0000000;
    r1_V_reg_1079[12:0] <= 13'b0000000000000;
end

endmodule //compute_gradients
