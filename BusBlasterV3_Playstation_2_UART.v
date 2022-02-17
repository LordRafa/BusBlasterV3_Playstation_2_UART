//////////////////////////////////////////////////////////////////////////////////
// Engineer:       Rafael Waldo Delgado Doblas
// 
// Create Date:    00:43:35 12/23/2017
// Project Name:   BusBlasterV3_Playstation_2_UART
// Target Devices: XC2C32A_VQ44
// Tool versions:  ISE 14.7
// Description:    Buffer to connect to the Playstation 2 UARTs. The UART level is
//                 1.6 volts. This buffer only supports to receive data from the PS2.
//                 TX must be connected to nTRST, the vTarget jumper must be removed
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
	input   FT_AD0_TCK,
	
	// JTAG Connector
	input   nTRST, JP2_P28, BUTTON, TCK,
	output  TDI, JP2_P19_LED, RTCK, TMS
	
);

	assign FT_AD1_TDI = JP2_P28? nTRST : TCK; // FT_RDX1       <- JP2_P28? EE_TDX  : MECHATRON_TDX
	assign TDI = JP2_P28? FT_AD0_TCK : 'bZ;   // EE_RDX        <- JP2_P28? FT_TDX1 : Z
	assign RTCK = JP2_P28? 'bZ : FT_AD0_TCK;  // MECHATRON_RDX <- JP2_P28? Z       : FT_TDX1

	assign JP2_P19_LED = JP2_P28;
	assign TMS = BUTTON? 'bZ : 0; // MECHATRON_TESTMODE

endmodule
