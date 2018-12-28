// soc_system_ddr3_hps.v

// This file was auto-generated from altera_hps_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module soc_system_ddr3_hps #(
		parameter F2S_Width = 0,
		parameter S2F_Width = 0
	) (
		output wire         h2f_rst_n,                //          h2f_reset.reset_n
		input  wire         f2h_cold_rst_req_n,       // f2h_cold_reset_req.reset_n
		input  wire         f2h_warm_rst_req_n,       // f2h_warm_reset_req.reset_n
		input  wire [27:0]  f2h_sdram0_ADDRESS,       //    f2h_sdram0_data.address
		input  wire [7:0]   f2h_sdram0_BURSTCOUNT,    //                   .burstcount
		output wire         f2h_sdram0_WAITREQUEST,   //                   .waitrequest
		output wire [127:0] f2h_sdram0_READDATA,      //                   .readdata
		output wire         f2h_sdram0_READDATAVALID, //                   .readdatavalid
		input  wire         f2h_sdram0_READ,          //                   .read
		input  wire [127:0] f2h_sdram0_WRITEDATA,     //                   .writedata
		input  wire [15:0]  f2h_sdram0_BYTEENABLE,    //                   .byteenable
		input  wire         f2h_sdram0_WRITE,         //                   .write
		input  wire         f2h_sdram0_clk,           //   f2h_sdram0_clock.clk
		output wire [14:0]  mem_a,                    //             memory.mem_a
		output wire [2:0]   mem_ba,                   //                   .mem_ba
		output wire         mem_ck,                   //                   .mem_ck
		output wire         mem_ck_n,                 //                   .mem_ck_n
		output wire         mem_cke,                  //                   .mem_cke
		output wire         mem_cs_n,                 //                   .mem_cs_n
		output wire         mem_ras_n,                //                   .mem_ras_n
		output wire         mem_cas_n,                //                   .mem_cas_n
		output wire         mem_we_n,                 //                   .mem_we_n
		output wire         mem_reset_n,              //                   .mem_reset_n
		inout  wire [31:0]  mem_dq,                   //                   .mem_dq
		inout  wire [3:0]   mem_dqs,                  //                   .mem_dqs
		inout  wire [3:0]   mem_dqs_n,                //                   .mem_dqs_n
		output wire         mem_odt,                  //                   .mem_odt
		output wire [3:0]   mem_dm,                   //                   .mem_dm
		input  wire         oct_rzqin                 //                   .oct_rzqin
	);

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (F2S_Width != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					f2s_width_check ( .error(1'b1) );
		end
		if (S2F_Width != 0)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					s2f_width_check ( .error(1'b1) );
		end
	endgenerate

	soc_system_ddr3_hps_fpga_interfaces fpga_interfaces (
		.h2f_rst_n                (h2f_rst_n),                //          h2f_reset.reset_n
		.f2h_cold_rst_req_n       (f2h_cold_rst_req_n),       // f2h_cold_reset_req.reset_n
		.f2h_warm_rst_req_n       (f2h_warm_rst_req_n),       // f2h_warm_reset_req.reset_n
		.f2h_sdram0_ADDRESS       (f2h_sdram0_ADDRESS),       //    f2h_sdram0_data.address
		.f2h_sdram0_BURSTCOUNT    (f2h_sdram0_BURSTCOUNT),    //                   .burstcount
		.f2h_sdram0_WAITREQUEST   (f2h_sdram0_WAITREQUEST),   //                   .waitrequest
		.f2h_sdram0_READDATA      (f2h_sdram0_READDATA),      //                   .readdata
		.f2h_sdram0_READDATAVALID (f2h_sdram0_READDATAVALID), //                   .readdatavalid
		.f2h_sdram0_READ          (f2h_sdram0_READ),          //                   .read
		.f2h_sdram0_WRITEDATA     (f2h_sdram0_WRITEDATA),     //                   .writedata
		.f2h_sdram0_BYTEENABLE    (f2h_sdram0_BYTEENABLE),    //                   .byteenable
		.f2h_sdram0_WRITE         (f2h_sdram0_WRITE),         //                   .write
		.f2h_sdram0_clk           (f2h_sdram0_clk)            //   f2h_sdram0_clock.clk
	);

	soc_system_ddr3_hps_hps_io hps_io (
		.mem_a       (mem_a),       // memory.mem_a
		.mem_ba      (mem_ba),      //       .mem_ba
		.mem_ck      (mem_ck),      //       .mem_ck
		.mem_ck_n    (mem_ck_n),    //       .mem_ck_n
		.mem_cke     (mem_cke),     //       .mem_cke
		.mem_cs_n    (mem_cs_n),    //       .mem_cs_n
		.mem_ras_n   (mem_ras_n),   //       .mem_ras_n
		.mem_cas_n   (mem_cas_n),   //       .mem_cas_n
		.mem_we_n    (mem_we_n),    //       .mem_we_n
		.mem_reset_n (mem_reset_n), //       .mem_reset_n
		.mem_dq      (mem_dq),      //       .mem_dq
		.mem_dqs     (mem_dqs),     //       .mem_dqs
		.mem_dqs_n   (mem_dqs_n),   //       .mem_dqs_n
		.mem_odt     (mem_odt),     //       .mem_odt
		.mem_dm      (mem_dm),      //       .mem_dm
		.oct_rzqin   (oct_rzqin)    //       .oct_rzqin
	);

endmodule
