
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module bcd2driver(
/*
	//////////// CLOCK //////////
	input 		          		ADC_CLK_10,
	input 		          		MAX10_CLK1_50,
	input 		          		MAX10_CLK2_50,

	//////////// SDRAM //////////
	output		    [12:0]		DRAM_ADDR,
	output		     [1:0]		DRAM_BA,
	output		          		DRAM_CAS_N,
	output		          		DRAM_CKE,
	output		          		DRAM_CLK,
	output		          		DRAM_CS_N,
	inout 		    [15:0]		DRAM_DQ,
	output		          		DRAM_LDQM,
	output		          		DRAM_RAS_N,
	output		          		DRAM_UDQM,
	output		          		DRAM_WE_N,

	//////////// SEG7 //////////
	
	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,

	//////////// KEY //////////
	input 		     [1:0]		KEY,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [9:0]		SW,

	//////////// Accelerometer //////////
	output		          		GSENSOR_CS_N,
	input 		     [2:1]		GSENSOR_INT,
	output		          		GSENSOR_SCLK,
	inout 		          		GSENSOR_SDI,
	inout 		          		GSENSOR_SDO
*/	
	output	reg	     [7:0]		HEX0,
	output	reg	     [7:0]		HEX1,
	input [6:0] SW,
	output reg  gt99
);



//=======================================================
//  REG/WIRE declarations
//=======================================================


   parameter ZERO =  8'b1100_0000;
   parameter ONE =   8'b1111_1001;
	parameter TWO =  8'b1010_0100;
	parameter THREE =  8'b1011_0000;
	parameter FOUR =  8'b1001_1001;
	parameter FIVE =  8'b1001_0010;
	parameter SIX =  8'b1000_0010;
	parameter SEVEN =  8'b1111_1000;
	parameter EIGHT =  8'b1000_0000;
	parameter NINE =  8'b1001_1000;


//=======================================================
//  Structural coding
   
   
    //Internal variables
	 /*
    reg [13:0] bcd; 
     reg [3:0] i;   
     */
     //Always block - implement the Double Dabble algorithm
     always @(SW)begin
	  if(SW[6:0]>8'b0110_0100)begin
	  gt99=1;
	  end
	
	  
	 
		
		case(SW)
			8'b0000_0000: begin
            HEX1 = ZERO; 
            HEX0 = ZERO;
         end
			8'b0000_0001: begin
            HEX1 = ZERO; 
            HEX0 = ONE;
         end
			8'b0000_0010: begin
            HEX1 = ZERO; 
            HEX0 = TWO;
         end
			8'b0000_0011: begin
            HEX1 = ZERO; 
            HEX0 = THREE;
         end
			8'b0000_0100: begin
            HEX1 = ZERO; 
            HEX0 = FOUR;
         end
			8'b0000_0101: begin
            HEX1 = ZERO; 
            HEX0 = FIVE;
         end
			8'b0000_0110: begin
            HEX1 = ZERO; 
            HEX0 = SIX;
         end
			8'b0000_0111: begin
            HEX1 = ZERO; 
            HEX0 = SEVEN;
         end
			8'b0000_1000: begin
            HEX1 = ZERO; 
            HEX0 = EIGHT;
         end
			8'b0000_1001: begin
            HEX1 = ZERO; 
            HEX0 = NINE;
         end
			4'b0000_1010: begin
            HEX1 = ONE; 
            HEX0 = ZERO;
         end
			8'b0000_1011: begin
            HEX1 = ONE; 
            HEX0 = ONE;
         end
			8'b0000_1100: begin
            HEX1 = ONE; 
            HEX0 = TWO;
         end
			8'b0000_1101: begin
            HEX1 = ONE; 
            HEX0 = THREE;
         end
			8'b0000_1110: begin
            HEX1 = ONE; 
            HEX0 = FOUR;
         end
			8'b0000_1111: begin
            HEX1 = ONE; 
            HEX0 = FIVE;
         end
			8'b0001_0000: begin
            HEX1 = ONE; 
            HEX0 = SIX;
         end
			8'b0001_0001: begin
            HEX1 = ONE; 
            HEX0 = SEVEN;
         end
			8'b0001_0010: begin
            HEX1 = ONE; 
            HEX0 = EIGHT;
         end
			8'b0001_0011: begin
            HEX1 = ONE; 
            HEX0 = NINE;
         end
			8'b0001_0100: begin
            HEX1 = TWO; 
            HEX0 = ZERO;
         end
			8'b0001_0101: begin
            HEX1 = TWO; 
            HEX0 = ONE;
         end
			8'b0001_0110: begin
            HEX1 = TWO; 
            HEX0 = TWO;
         end
			8'b0001_0111: begin
            HEX1 = TWO; 
            HEX0 = THREE;
         end
			8'b0001_0111: begin
            HEX1 = TWO; 
            HEX0 = THREE;
         end
			8'b0001_0111: begin
            HEX1 = TWO; 
            HEX0 = THREE;
         end
			8'b0001_1000: begin
            HEX1 = TWO; 
            HEX0 = FOUR;
         end
			8'b0001_1001: begin
            HEX1 = TWO; 
            HEX0 = FIVE;
         end
			8'b0001_1010: begin
            HEX1 = TWO; 
            HEX0 = SIX;
         end
			8'b0001_1011: begin
            HEX1 = TWO; 
            HEX0 = SEVEN;
         end
			8'b0001_1100: begin
            HEX1 = TWO; 
            HEX0 = EIGHT;
         end
			8'b0001_1101: begin
            HEX1 = TWO; 
            HEX0 = NINE;
         end
			8'b0001_1110: begin
            HEX1 = THREE; 
            HEX0 = ZERO;
         end
			8'b0001_1111: begin
            HEX1 = THREE; 
            HEX0 = ONE;
         end
			8'b0010_0000: begin
            HEX1 = THREE; 
            HEX0 = TWO;
         end
			8'b0010_0001: begin
            HEX1 = THREE; 
            HEX0 = THREE;
         end
			8'b0010_0010: begin
            HEX1 = THREE; 
            HEX0 = FOUR;
         end
			8'b0010_0011: begin
            HEX1 = THREE; 
            HEX0 = FIVE;
         end
			8'b0010_0100: begin
            HEX1 = THREE; 
            HEX0 = SIX;
         end
			8'b0010_0101: begin
            HEX1 = THREE; 
            HEX0 = SEVEN;
         end
			8'b0010_0111: begin
            HEX1 = THREE; 
            HEX0 = EIGHT;
         end
			8'b0010_1000: begin
            HEX1 = THREE; 
            HEX0 = NINE;
         end
			8'b0010_1001: begin
            HEX1 = FOUR; 
            HEX0 = ZERO;
         end
			8'b0010_1010: begin
            HEX1 = FOUR; 
            HEX0 = ONE;
         end
			8'b0010_1011: begin
           HEX1 = FOUR; 
            HEX0 = TWO;
         end
			8'b0010_1100: begin
            HEX1 = FOUR; 
            HEX0 = THREE;
         end
			8'b0010_1101: begin
            HEX1 = FOUR; 
            HEX0 = FOUR;
         end
				8'b0010_1110: begin
            HEX1 = FOUR; 
            HEX0 = FIVE;
         end
				8'b0010_1111: begin
            HEX1 = FOUR; 
            HEX0 = SIX;
         end
				8'b0011_0000: begin
            HEX1 = FOUR; 
            HEX0 = SEVEN;
         end
			8'b0011_0001: begin
            HEX1 = FOUR; 
            HEX0 = EIGHT;
         end
			8'b0011_0010: begin
            HEX1 = FOUR; 
            HEX0 = NINE;
         end
			8'b0011_0011: begin
            HEX1 = FIVE; 
            HEX0 = ZERO;
         end
				8'b0011_0100: begin
            HEX1 = FIVE; 
            HEX0 = ONE;
         end
				8'b0011_0101: begin
            HEX1 = FIVE; 
            HEX0 = TWO;
         end
				8'b0011_0110: begin
            HEX1 = FIVE; 
            HEX0 = THREE;
         end
				8'b0011_0111: begin
            HEX1 = FIVE; 
            HEX0 = FOUR;
         end
				8'b0011_1000: begin
            HEX1 = FIVE; 
            HEX0 = FIVE;
         end
			8'b0011_1001: begin
            HEX1 = FIVE; 
            HEX0 = SIX;
         end
			8'b0011_1010: begin
            HEX1 = FIVE; 
            HEX0 = SEVEN;
         end
			8'b0011_1011: begin
            HEX1 = FIVE; 
            HEX0 = EIGHT;
         end
			8'b0011_1100: begin
            HEX1 = FIVE; 
            HEX0 = NINE;
         end
			8'b0011_1101: begin
            HEX1 = SIX; 
            HEX0 = ZERO;
         end
			8'b0011_1110: begin
            HEX1 = SIX; 
            HEX0 = ONE;
         end
			8'b0011_1111: begin
            HEX1 = SIX; 
            HEX0 = TWO;
         end
			8'b0100_0000: begin
            HEX1 = SIX; 
            HEX0 = THREE;
         end
			8'b0100_0001: begin
            HEX1 = SIX; 
            HEX0 = FOUR;
         end
			8'b0100_0010: begin
            HEX1 = SIX; 
            HEX0 = FIVE;
         end
			8'b0100_0011: begin
            HEX1 = SIX; 
            HEX0 = SIX;
         end
			8'b0100_0100: begin
            HEX1 = SIX; 
           HEX0 = SEVEN;
         end
			8'b0100_0101: begin
            HEX1 = SIX; 
            HEX0 = EIGHT;
         end
			8'b0100_0110: begin
            HEX1 = SIX; 
            HEX0 = NINE;
         end
			8'b0100_0111: begin
            HEX1 = SEVEN; 
           HEX0 = ZERO;
         end
			8'b0100_1000: begin
            HEX1 = SEVEN; 
            HEX0 = ONE;
         end
			8'b0100_1001: begin
            HEX1 = SEVEN; 
            HEX0 = TWO;
         end
				8'b0100_1010: begin
            HEX1 = SEVEN; 
            HEX0 = THREE;
         end
				8'b0100_1011: begin
            HEX1 = SEVEN; 
            HEX0 = FOUR;
         end
				8'b0100_1100: begin
            HEX1 = SEVEN; 
            HEX0 = FIVE;
         end
			8'b0100_1101: begin
            HEX1 = SEVEN; 
            HEX0 = SIX;
         end
			8'b0100_1110: begin
            HEX1 = SEVEN; 
            HEX0 = SEVEN;
         end
			8'b0100_1111: begin
            HEX1 = SEVEN; 
            HEX0 = EIGHT;
         end
			8'b0101_0000: begin
            HEX1 = SEVEN; 
            HEX0 = NINE;
         end
			8'b0101_0001: begin
            HEX1 = EIGHT; 
            HEX0 = ZERO;
         end
			8'b0101_0010: begin
            HEX1 = EIGHT; 
            HEX0 = ONE;
         end
			8'b0101_0011: begin
            HEX1 = EIGHT; 
            HEX0 = TWO;
         end
			8'b0101_0100: begin
            HEX1 = EIGHT; 
            HEX0 = THREE;
         end
			8'b0101_0101: begin
            HEX1 = EIGHT; 
            HEX0 = FOUR;
         end
			8'b0101_0110: begin
            HEX1 = EIGHT; 
           HEX0 = FIVE;
         end
			8'b0101_0111: begin
            HEX1 = EIGHT; 
            HEX0 = SIX;
         end
			8'b0101_1000: begin
            HEX1 = EIGHT; 
            HEX0 = SEVEN;
         end
			8'b0101_1001: begin
            HEX1 = EIGHT; 
            HEX0 = EIGHT;
         end
			8'b0101_1010: begin
            HEX1 = EIGHT; 
            HEX0 = NINE;
         end
			8'b0101_1011: begin
            HEX1 = NINE; 
            HEX0 = ZERO;
         end
			8'b0101_1100: begin
            HEX1 = NINE; 
            HEX0 = ONE;
         end
			8'b0101_1101: begin
            HEX1 = NINE; 
            HEX0 = TWO;
         end
			8'b0101_1110: begin
            HEX1 = NINE; 
            HEX0 = THREE;
         end
			8'b0101_1111: begin
            HEX1 = NINE; 
            HEX0 = FOUR;
         end
			8'b0110_0000: begin
            HEX1 = NINE; 
            HEX0 = FIVE;
         end
			8'b0110_0001: begin
            HEX1 = NINE; 
            HEX0 = SIX;
         end
			8'b0110_0010: begin
            HEX1 = NINE; 
            HEX0 = SEVEN;
         end
				8'b0110_0011: begin
            HEX1 = NINE; 
            HEX0 = EIGHT;
         end
				8'b0110_0100: begin
            HEX1 = NINE; 
            HEX0 = NINE;
         end
			default: begin
            HEX1 = 8'b1011_1111; 
            HEX0 = 8'b1011_1111;
         end
	endcase
end
endmodule
