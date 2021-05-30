//////////////////////////////////////////////////////////////////////////////////
// Engineer:       Rafael Waldo Delgado Doblas
// 
// Create Date:    00:43:35 12/23/2017
// Project Name:   BusBlasterV3_Playstation_2_UART
// Target Devices: XC2C32A_VQ44
// Tool versions:  ISE 14.7
// Description:    Buffer to connect to the Playstation 2 UART. The UART level is
//                 1.6 volts. This buffer only supports to receive data from the PS2.
//                 RX must be connected to nTRST, the vTarget jumper must be removed
//                 and vTarget should be connected to the Playstation 2 1.6V power rail.
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BusBlasterV3_Playstation_2_UART(

	// FT AD BUS	
	output  FT_AD1_TDI,
	
	// JTAG Connector
	input nTRST

);

	assign FT_AD1_TDI = nTRST;

endmodule
