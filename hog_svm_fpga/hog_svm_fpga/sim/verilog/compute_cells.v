// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module compute_cells (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        grad_vote_magnitude_s_address0,
        grad_vote_magnitude_s_ce0,
        grad_vote_magnitude_s_q0,
        grad_vote_bin_V_address0,
        grad_vote_bin_V_ce0,
        grad_vote_bin_V_q0,
        cells_bin_V_address0,
        cells_bin_V_ce0,
        cells_bin_V_we0,
        cells_bin_V_d0,
        cells_mag_sq_V_address0,
        cells_mag_sq_V_ce0,
        cells_mag_sq_V_we0,
        cells_mag_sq_V_d0
);

parameter    ap_ST_fsm_state1 = 8'd1;
parameter    ap_ST_fsm_state2 = 8'd2;
parameter    ap_ST_fsm_state3 = 8'd4;
parameter    ap_ST_fsm_pp0_stage0 = 8'd8;
parameter    ap_ST_fsm_pp0_stage1 = 8'd16;
parameter    ap_ST_fsm_state8 = 8'd32;
parameter    ap_ST_fsm_pp1_stage0 = 8'd64;
parameter    ap_ST_fsm_state13 = 8'd128;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] grad_vote_magnitude_s_address0;
output   grad_vote_magnitude_s_ce0;
input  [25:0] grad_vote_magnitude_s_q0;
output  [11:0] grad_vote_bin_V_address0;
output   grad_vote_bin_V_ce0;
input  [3:0] grad_vote_bin_V_q0;
output  [9:0] cells_bin_V_address0;
output   cells_bin_V_ce0;
output   cells_bin_V_we0;
output  [31:0] cells_bin_V_d0;
output  [5:0] cells_mag_sq_V_address0;
output   cells_mag_sq_V_ce0;
output   cells_mag_sq_V_we0;
output  [63:0] cells_mag_sq_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg grad_vote_magnitude_s_ce0;
reg grad_vote_bin_V_ce0;
reg cells_bin_V_ce0;
reg cells_bin_V_we0;
reg cells_mag_sq_V_ce0;
reg cells_mag_sq_V_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] indvar_flatten_reg_211;
reg   [3:0] t_V_reg_222;
reg   [3:0] t_V_3_reg_233;
reg   [63:0] p_Val2_8_reg_244;
reg   [3:0] k1_reg_257;
wire   [6:0] indvar_flatten_next7_fu_274_p2;
reg   [6:0] indvar_flatten_next7_reg_591;
wire    ap_CS_fsm_state2;
wire   [6:0] i_op_assign_mid2_fu_294_p3;
reg   [6:0] i_op_assign_mid2_reg_596;
wire   [0:0] exitcond_flatten8_fu_268_p2;
wire   [6:0] tmp_mid2_v_v_v_fu_302_p3;
reg   [6:0] tmp_mid2_v_v_v_reg_603;
reg   [2:0] tmp_mid2_v_reg_609;
wire   [0:0] exitcond5_fu_320_p2;
wire    ap_CS_fsm_state3;
wire   [3:0] k_2_fu_326_p2;
wire   [0:0] exitcond_flatten_fu_337_p2;
reg   [0:0] exitcond_flatten_reg_624;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state4_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond_flatten_reg_624_pp0_iter1_reg;
wire   [6:0] indvar_flatten_next_fu_343_p2;
reg   [6:0] indvar_flatten_next_reg_628;
reg    ap_enable_reg_pp0_iter0;
wire   [3:0] t_V_3_mid2_fu_361_p3;
reg   [3:0] t_V_3_mid2_reg_633;
wire   [3:0] tmp_94_mid2_v_v_v_fu_369_p3;
reg   [3:0] tmp_94_mid2_v_v_v_reg_639;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state5_pp0_stage1_iter0;
wire    ap_block_state7_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_11001;
wire   [3:0] jj_V_fu_421_p2;
reg   [3:0] jj_V_reg_655;
reg   [25:0] grad_vote_magnitude_3_reg_660;
reg   [3:0] bin_vote_V_addr_3_reg_665;
wire   [9:0] tmp_97_fu_479_p2;
reg   [9:0] tmp_97_reg_670;
wire    ap_CS_fsm_state8;
reg   [5:0] cells_mag_sq_V_addr_reg_675;
wire   [0:0] exitcond_fu_485_p2;
reg   [0:0] exitcond_reg_680;
wire    ap_CS_fsm_pp1_stage0;
wire    ap_block_state9_pp1_stage0_iter0;
wire    ap_block_state10_pp1_stage0_iter1;
wire    ap_block_state11_pp1_stage0_iter2;
wire    ap_block_state12_pp1_stage0_iter3;
wire    ap_block_pp1_stage0_11001;
reg   [0:0] exitcond_reg_680_pp1_iter1_reg;
reg   [0:0] exitcond_reg_680_pp1_iter2_reg;
wire   [3:0] k_3_fu_491_p2;
reg   [3:0] k_3_reg_684;
reg    ap_enable_reg_pp1_iter0;
wire   [9:0] tmp_101_fu_506_p2;
reg   [9:0] tmp_101_reg_689;
wire  signed [31:0] addconv_fu_562_p2;
reg  signed [31:0] addconv_reg_704;
wire   [63:0] p_Val2_1_fu_572_p2;
reg   [63:0] p_Val2_1_reg_709;
wire   [63:0] mag_sq_V_fu_578_p2;
reg    ap_enable_reg_pp1_iter3;
wire   [6:0] j_fu_583_p2;
wire    ap_CS_fsm_state13;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state4;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp1_stage0_subdone;
reg    ap_condition_pp1_exit_iter0_state9;
reg    ap_enable_reg_pp1_iter1;
reg    ap_enable_reg_pp1_iter2;
reg   [3:0] bin_vote_V_address0;
reg    bin_vote_V_ce0;
reg    bin_vote_V_we0;
reg   [31:0] bin_vote_V_d0;
wire   [31:0] bin_vote_V_q0;
wire   [3:0] bin_vote_V_address1;
reg    bin_vote_V_ce1;
wire   [31:0] bin_vote_V_q1;
reg   [6:0] indvar_flatten6_reg_167;
reg    ap_block_state1;
reg   [6:0] i_op_assign_1_reg_178;
reg   [6:0] i_op_assign_reg_189;
reg   [3:0] k_reg_200;
reg   [6:0] ap_phi_mux_indvar_flatten_phi_fu_215_p4;
wire    ap_block_pp0_stage0;
reg   [3:0] ap_phi_mux_t_V_phi_fu_226_p4;
reg   [3:0] ap_phi_mux_t_V_3_phi_fu_237_p4;
reg   [3:0] ap_phi_mux_k1_phi_fu_261_p4;
wire    ap_block_pp1_stage0;
wire   [63:0] tmp_85_fu_332_p1;
wire   [63:0] tmp_109_cast_fu_415_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] tmp_88_fu_426_p1;
wire   [63:0] tmp_s_fu_457_p1;
wire   [63:0] tmp_89_fu_497_p1;
wire   [63:0] tmp_92_fu_525_p1;
wire   [63:0] tmp_110_cast_fu_530_p1;
wire   [31:0] p_Val2_s_fu_434_p2;
wire   [0:0] tmp_111_fu_286_p3;
wire   [6:0] i_fu_280_p2;
wire   [0:0] tmp_98_fu_355_p2;
wire   [3:0] ii_V_fu_349_p2;
wire   [6:0] tmp_94_mid2_v_v_fu_377_p1;
wire   [6:0] tmp_94_mid2_v_fu_380_p2;
wire   [12:0] tmp_99_fu_385_p3;
wire   [6:0] rhs_V_cast_fu_397_p1;
wire   [6:0] r_V_fu_400_p2;
wire   [13:0] tmp_87_cast_fu_405_p1;
wire   [13:0] tmp_108_cast_fu_393_p1;
wire   [13:0] tmp_100_fu_409_p2;
wire   [31:0] p_Val2_43_fu_431_p1;
wire   [2:0] tmp_67_fu_441_p4;
wire   [5:0] tmp_fu_450_p3;
wire   [8:0] tmp_96_fu_466_p4;
wire   [9:0] p_shl_cast_fu_475_p1;
wire   [9:0] tmp_104_cast_fu_462_p1;
wire   [9:0] tmp_89_cast_fu_502_p1;
wire   [0:0] tmp_90_fu_511_p2;
wire   [3:0] tmp_91_fu_517_p3;
wire   [30:0] tmp_70_fu_534_p4;
wire   [30:0] tmp_72_fu_548_p4;
wire  signed [31:0] p_Val2_9_fu_558_p1;
wire  signed [31:0] p_Val2_s_31_fu_544_p1;
wire  signed [31:0] p_Val2_1_fu_572_p0;
wire  signed [63:0] OP1_V_fu_569_p1;
wire  signed [31:0] p_Val2_1_fu_572_p1;
reg   [7:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_idle_pp1;
wire    ap_enable_pp1;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter0 = 1'b0;
#0 ap_enable_reg_pp1_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter1 = 1'b0;
#0 ap_enable_reg_pp1_iter2 = 1'b0;
end

compute_cells_binbkb #(
    .DataWidth( 32 ),
    .AddressRange( 9 ),
    .AddressWidth( 4 ))
bin_vote_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(bin_vote_V_address0),
    .ce0(bin_vote_V_ce0),
    .we0(bin_vote_V_we0),
    .d0(bin_vote_V_d0),
    .q0(bin_vote_V_q0),
    .address1(bin_vote_V_address1),
    .ce1(bin_vote_V_ce1),
    .q1(bin_vote_V_q1)
);

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
        end else if (((exitcond_flatten8_fu_268_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state4))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((exitcond5_fu_320_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state4) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state4);
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((exitcond5_fu_320_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp1_stage0_subdone) & (1'b1 == ap_condition_pp1_exit_iter0_state9) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
            ap_enable_reg_pp1_iter0 <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp1_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp1_exit_iter0_state9)) begin
                ap_enable_reg_pp1_iter1 <= (1'b1 ^ ap_condition_pp1_exit_iter0_state9);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp1_iter1 <= ap_enable_reg_pp1_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter2 <= ap_enable_reg_pp1_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp1_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp1_stage0_subdone)) begin
            ap_enable_reg_pp1_iter3 <= ap_enable_reg_pp1_iter2;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_enable_reg_pp1_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i_op_assign_1_reg_178 <= tmp_mid2_v_v_v_reg_603;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_op_assign_1_reg_178 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i_op_assign_reg_189 <= j_fu_583_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_op_assign_reg_189 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        indvar_flatten6_reg_167 <= indvar_flatten_next7_reg_591;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten6_reg_167 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_320_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvar_flatten_reg_211 <= 7'd0;
    end else if (((exitcond_flatten_reg_624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten_reg_211 <= indvar_flatten_next_reg_628;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_680 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        k1_reg_257 <= k_3_reg_684;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        k1_reg_257 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten8_fu_268_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        k_reg_200 <= 4'd0;
    end else if (((exitcond5_fu_320_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        k_reg_200 <= k_2_fu_326_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_680_pp1_iter2_reg == 1'd0) & (ap_enable_reg_pp1_iter3 == 1'b1) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        p_Val2_8_reg_244 <= mag_sq_V_fu_578_p2;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        p_Val2_8_reg_244 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_320_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        t_V_3_reg_233 <= 4'd0;
    end else if (((exitcond_flatten_reg_624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        t_V_3_reg_233 <= jj_V_reg_655;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_320_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        t_V_reg_222 <= 4'd0;
    end else if (((exitcond_flatten_reg_624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        t_V_reg_222 <= tmp_94_mid2_v_v_v_reg_639;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_680 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        addconv_reg_704 <= addconv_fu_562_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        bin_vote_V_addr_3_reg_665 <= tmp_88_fu_426_p1;
        grad_vote_magnitude_3_reg_660 <= grad_vote_magnitude_s_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        cells_mag_sq_V_addr_reg_675 <= tmp_s_fu_457_p1;
        tmp_97_reg_670 <= tmp_97_fu_479_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        exitcond_flatten_reg_624 <= exitcond_flatten_fu_337_p2;
        exitcond_flatten_reg_624_pp0_iter1_reg <= exitcond_flatten_reg_624;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        exitcond_reg_680 <= exitcond_fu_485_p2;
        exitcond_reg_680_pp1_iter1_reg <= exitcond_reg_680;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp1_stage0_11001)) begin
        exitcond_reg_680_pp1_iter2_reg <= exitcond_reg_680_pp1_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten8_fu_268_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_op_assign_mid2_reg_596 <= i_op_assign_mid2_fu_294_p3;
        tmp_mid2_v_reg_609 <= {{tmp_mid2_v_v_v_fu_302_p3[5:3]}};
        tmp_mid2_v_v_v_reg_603 <= tmp_mid2_v_v_v_fu_302_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvar_flatten_next7_reg_591 <= indvar_flatten_next7_fu_274_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        indvar_flatten_next_reg_628 <= indvar_flatten_next_fu_343_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_reg_624 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        jj_V_reg_655 <= jj_V_fu_421_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        k_3_reg_684 <= k_3_fu_491_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_reg_680_pp1_iter1_reg == 1'd0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        p_Val2_1_reg_709 <= p_Val2_1_fu_572_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        t_V_3_mid2_reg_633 <= t_V_3_mid2_fu_361_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_485_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        tmp_101_reg_689 <= tmp_101_fu_506_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_flatten_fu_337_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_94_mid2_v_v_v_reg_639 <= tmp_94_mid2_v_v_v_fu_369_p3;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_337_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state4 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state4 = 1'b0;
    end
end

always @ (*) begin
    if ((exitcond_fu_485_p2 == 1'd1)) begin
        ap_condition_pp1_exit_iter0_state9 = 1'b1;
    end else begin
        ap_condition_pp1_exit_iter0_state9 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten8_fu_268_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter2 == 1'b0) & (ap_enable_reg_pp1_iter1 == 1'b0) & (ap_enable_reg_pp1_iter3 == 1'b0) & (ap_enable_reg_pp1_iter0 == 1'b0))) begin
        ap_idle_pp1 = 1'b1;
    end else begin
        ap_idle_pp1 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_624 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_indvar_flatten_phi_fu_215_p4 = indvar_flatten_next_reg_628;
    end else begin
        ap_phi_mux_indvar_flatten_phi_fu_215_p4 = indvar_flatten_reg_211;
    end
end

always @ (*) begin
    if (((exitcond_reg_680 == 1'd0) & (1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        ap_phi_mux_k1_phi_fu_261_p4 = k_3_reg_684;
    end else begin
        ap_phi_mux_k1_phi_fu_261_p4 = k1_reg_257;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_624 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_t_V_3_phi_fu_237_p4 = jj_V_reg_655;
    end else begin
        ap_phi_mux_t_V_3_phi_fu_237_p4 = t_V_3_reg_233;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_624 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_t_V_phi_fu_226_p4 = tmp_94_mid2_v_v_v_reg_639;
    end else begin
        ap_phi_mux_t_V_phi_fu_226_p4 = t_V_reg_222;
    end
end

always @ (*) begin
    if (((exitcond_flatten8_fu_268_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp1_stage0) & (ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0))) begin
        bin_vote_V_address0 = tmp_89_fu_497_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bin_vote_V_address0 = bin_vote_V_addr_3_reg_665;
    end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        bin_vote_V_address0 = tmp_88_fu_426_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bin_vote_V_address0 = tmp_85_fu_332_p1;
    end else begin
        bin_vote_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001)) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        bin_vote_V_ce0 = 1'b1;
    end else begin
        bin_vote_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        bin_vote_V_ce1 = 1'b1;
    end else begin
        bin_vote_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        bin_vote_V_d0 = p_Val2_s_fu_434_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        bin_vote_V_d0 = 32'd0;
    end else begin
        bin_vote_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((exitcond5_fu_320_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((exitcond_flatten_reg_624_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        bin_vote_V_we0 = 1'b1;
    end else begin
        bin_vote_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        cells_bin_V_ce0 = 1'b1;
    end else begin
        cells_bin_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_reg_680 == 1'd0) & (ap_enable_reg_pp1_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp1_stage0) & (1'b0 == ap_block_pp1_stage0_11001))) begin
        cells_bin_V_we0 = 1'b1;
    end else begin
        cells_bin_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        cells_mag_sq_V_ce0 = 1'b1;
    end else begin
        cells_mag_sq_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        cells_mag_sq_V_we0 = 1'b1;
    end else begin
        cells_mag_sq_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        grad_vote_bin_V_ce0 = 1'b1;
    end else begin
        grad_vote_bin_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        grad_vote_magnitude_s_ce0 = 1'b1;
    end else begin
        grad_vote_magnitude_s_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond_flatten8_fu_268_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond5_fu_320_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((exitcond_flatten_fu_337_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((exitcond_flatten_fu_337_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((~((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b0)) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_pp1_stage0;
        end
        ap_ST_fsm_pp1_stage0 : begin
            if ((~((ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1) & (exitcond_fu_485_p2 == 1'd1)) & ~((ap_enable_reg_pp1_iter2 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter3 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end else if ((((ap_enable_reg_pp1_iter2 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter3 == 1'b1)) | ((ap_enable_reg_pp1_iter1 == 1'b0) & (1'b0 == ap_block_pp1_stage0_subdone) & (ap_enable_reg_pp1_iter0 == 1'b1) & (exitcond_fu_485_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp1_stage0;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign OP1_V_fu_569_p1 = addconv_reg_704;

assign addconv_fu_562_p2 = ($signed(p_Val2_9_fu_558_p1) + $signed(p_Val2_s_31_fu_544_p1));

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp1_stage0 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp1_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state10_pp1_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp1_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp1_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp1_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_pp1 = (ap_idle_pp1 ^ 1'b1);

assign bin_vote_V_address1 = tmp_92_fu_525_p1;

assign cells_bin_V_address0 = tmp_110_cast_fu_530_p1;

assign cells_bin_V_d0 = ($signed(p_Val2_9_fu_558_p1) + $signed(p_Val2_s_31_fu_544_p1));

assign cells_mag_sq_V_address0 = cells_mag_sq_V_addr_reg_675;

assign cells_mag_sq_V_d0 = p_Val2_8_reg_244;

assign exitcond5_fu_320_p2 = ((k_reg_200 == 4'd9) ? 1'b1 : 1'b0);

assign exitcond_flatten8_fu_268_p2 = ((indvar_flatten6_reg_167 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_337_p2 = ((ap_phi_mux_indvar_flatten_phi_fu_215_p4 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond_fu_485_p2 = ((ap_phi_mux_k1_phi_fu_261_p4 == 4'd9) ? 1'b1 : 1'b0);

assign grad_vote_bin_V_address0 = tmp_109_cast_fu_415_p1;

assign grad_vote_magnitude_s_address0 = tmp_109_cast_fu_415_p1;

assign i_fu_280_p2 = (i_op_assign_1_reg_178 + 7'd8);

assign i_op_assign_mid2_fu_294_p3 = ((tmp_111_fu_286_p3[0:0] === 1'b1) ? 7'd0 : i_op_assign_reg_189);

assign ii_V_fu_349_p2 = (ap_phi_mux_t_V_phi_fu_226_p4 + 4'd1);

assign indvar_flatten_next7_fu_274_p2 = (indvar_flatten6_reg_167 + 7'd1);

assign indvar_flatten_next_fu_343_p2 = (ap_phi_mux_indvar_flatten_phi_fu_215_p4 + 7'd1);

assign j_fu_583_p2 = (i_op_assign_mid2_reg_596 + 7'd8);

assign jj_V_fu_421_p2 = (t_V_3_mid2_reg_633 + 4'd1);

assign k_2_fu_326_p2 = (k_reg_200 + 4'd1);

assign k_3_fu_491_p2 = (ap_phi_mux_k1_phi_fu_261_p4 + 4'd1);

assign mag_sq_V_fu_578_p2 = (p_Val2_8_reg_244 + p_Val2_1_reg_709);

assign p_Val2_1_fu_572_p0 = OP1_V_fu_569_p1;

assign p_Val2_1_fu_572_p1 = OP1_V_fu_569_p1;

assign p_Val2_1_fu_572_p2 = ($signed(p_Val2_1_fu_572_p0) * $signed(p_Val2_1_fu_572_p1));

assign p_Val2_43_fu_431_p1 = grad_vote_magnitude_3_reg_660;

assign p_Val2_9_fu_558_p1 = $signed(tmp_72_fu_548_p4);

assign p_Val2_s_31_fu_544_p1 = $signed(tmp_70_fu_534_p4);

assign p_Val2_s_fu_434_p2 = (p_Val2_43_fu_431_p1 + bin_vote_V_q0);

assign p_shl_cast_fu_475_p1 = tmp_96_fu_466_p4;

assign r_V_fu_400_p2 = (i_op_assign_mid2_reg_596 + rhs_V_cast_fu_397_p1);

assign rhs_V_cast_fu_397_p1 = t_V_3_mid2_reg_633;

assign t_V_3_mid2_fu_361_p3 = ((tmp_98_fu_355_p2[0:0] === 1'b1) ? 4'd0 : ap_phi_mux_t_V_3_phi_fu_237_p4);

assign tmp_100_fu_409_p2 = (tmp_87_cast_fu_405_p1 + tmp_108_cast_fu_393_p1);

assign tmp_101_fu_506_p2 = (tmp_97_reg_670 + tmp_89_cast_fu_502_p1);

assign tmp_104_cast_fu_462_p1 = tmp_fu_450_p3;

assign tmp_108_cast_fu_393_p1 = tmp_99_fu_385_p3;

assign tmp_109_cast_fu_415_p1 = tmp_100_fu_409_p2;

assign tmp_110_cast_fu_530_p1 = tmp_101_reg_689;

assign tmp_111_fu_286_p3 = i_op_assign_reg_189[32'd6];

assign tmp_67_fu_441_p4 = {{i_op_assign_mid2_reg_596[5:3]}};

assign tmp_70_fu_534_p4 = {{bin_vote_V_q0[31:1]}};

assign tmp_72_fu_548_p4 = {{bin_vote_V_q1[31:1]}};

assign tmp_85_fu_332_p1 = k_reg_200;

assign tmp_87_cast_fu_405_p1 = r_V_fu_400_p2;

assign tmp_88_fu_426_p1 = grad_vote_bin_V_q0;

assign tmp_89_cast_fu_502_p1 = ap_phi_mux_k1_phi_fu_261_p4;

assign tmp_89_fu_497_p1 = ap_phi_mux_k1_phi_fu_261_p4;

assign tmp_90_fu_511_p2 = ((ap_phi_mux_k1_phi_fu_261_p4 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_91_fu_517_p3 = ((tmp_90_fu_511_p2[0:0] === 1'b1) ? 4'd0 : k_3_fu_491_p2);

assign tmp_92_fu_525_p1 = tmp_91_fu_517_p3;

assign tmp_94_mid2_v_fu_380_p2 = (tmp_mid2_v_v_v_reg_603 + tmp_94_mid2_v_v_fu_377_p1);

assign tmp_94_mid2_v_v_fu_377_p1 = tmp_94_mid2_v_v_v_reg_639;

assign tmp_94_mid2_v_v_v_fu_369_p3 = ((tmp_98_fu_355_p2[0:0] === 1'b1) ? ii_V_fu_349_p2 : ap_phi_mux_t_V_phi_fu_226_p4);

assign tmp_96_fu_466_p4 = {{{tmp_mid2_v_reg_609}, {tmp_67_fu_441_p4}}, {3'd0}};

assign tmp_97_fu_479_p2 = (p_shl_cast_fu_475_p1 + tmp_104_cast_fu_462_p1);

assign tmp_98_fu_355_p2 = ((ap_phi_mux_t_V_3_phi_fu_237_p4 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_99_fu_385_p3 = {{tmp_94_mid2_v_fu_380_p2}, {6'd0}};

assign tmp_fu_450_p3 = {{tmp_mid2_v_reg_609}, {tmp_67_fu_441_p4}};

assign tmp_mid2_v_v_v_fu_302_p3 = ((tmp_111_fu_286_p3[0:0] === 1'b1) ? i_fu_280_p2 : i_op_assign_1_reg_178);

assign tmp_s_fu_457_p1 = tmp_fu_450_p3;

endmodule //compute_cells
