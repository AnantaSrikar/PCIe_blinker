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
	input  sys_clk_p, sys_clk_n,
	input  pci_exp_rxp, pci_exp_rxn,
	output pci_exp_txp, pci_exp_txn,
	
	output [2:0] LED
	);
	
	wire sys_reset_n = 1'b1;	 
	wire sys_clk;
	
	IBUFDS #(.DIFF_TERM("TRUE")) refclk_ibuf3 (
		.O(sys_clk),
		.I(sys_clk_p),
		.IB(sys_clk_n)
	);
	
	PCIe_IP pcie_ep_instance(
		.pci_exp_txp(pci_exp_txp),
		.pci_exp_txn(pci_exp_txn),
		.pci_exp_rxp(pci_exp_rxp),
		.pci_exp_rxn(pci_exp_rxn),
		.sys_clk(sys_clk),
		
		.sys_reset_n(sys_reset_n)
	);
	
	assign LED[0] = 1;
	assign LED[1] = 1;
	assign LED[2] = 1;


endmodule
