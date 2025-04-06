`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:24:48 04/06/2025 
// Design Name: 
// Module Name:    PCIe_blinker 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PCIe_blinker(
	input clk,
	output [2:0] LED
    );
	 
reg [31:0] cnt;
always @(posedge clk) cnt <= cnt + 1;

assign LED[0] = ~cnt[22];
assign LED[1] = cnt[22];
assign LED[2] = cnt[23];


endmodule
