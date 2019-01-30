
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module seg7(

	//////////// CLOCK //////////
	//input 		          		ADC_CLK_10,
	//input 		          		MAX10_CLK1_50,
	//input 		          		MAX10_CLK2_50,

	//////////// SEG7 //////////
	output 	     [7:0]		HEX0,
	//output		     [7:0]		HEX1,
	//output		     [7:0]		HEX2,
	//output		     [7:0]		HEX3,
	//output		     [7:0]		HEX4,
	//output		     [7:0]		HEX5,
	
	

	//////////// KEY //////////
	//input 		     [1:0]		KEY,

	//////////// LED //////////
	//output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [3:0]		seggy
	
);



//=======================================================
//  REG/WIRE declarations
//=======================================================

reg[3:0] f;
wire[2:0] x,y,z;


//=======================================================
//  Structural coding
//=======================================================
parameter ZERO=4'b1000;
parameter ONE=4'b1111;
parameter TWO=4'b0100;
parameter THREE=4'b0110;
parameter FOUR=4'b0011;
parameter FIVE=4'b0010;
parameter SIX=4'b0000;
parameter SEVEN=4'b1111;
parameter EIGHT=4'b0000;
parameter NINE=4'b0011;
parameter TEN=4'b0001;
parameter ELEVEN=4'b0000;
parameter TWELVE=4'b1000;
parameter THIRTEEN=4'b0100;
parameter FOURTEEN=4'b0000;
parameter FIFTEEN=4'b0001;



	always@(seggy)begin
		case(seggy)
			4'b0000:begin
			f=ZERO;
			end
			4'b0001:begin
			f=ONE;
			end
			4'b0010:begin
			f=TWO;
			end
			4'b0011:begin
			f=THREE;
			end
			4'b0100:begin
			f=FOUR;
			end
			4'b0101:begin
			f=FIVE;
			end
			4'b0110:begin
			f=SIX;
			end
			4'b0111:begin
			f=SEVEN;
			end
			4'b1000:begin
			f=EIGHT;
			end
			4'b1001:begin
			f=NINE;
			end
			4'b1010:begin
			f=TEN;
			end
			4'b1011:begin
			f=ELEVEN;
			end
			4'b1100:begin
			f=TWELVE;
			end
			4'b1101:begin
			f=THIRTEEN;
			end
			4'b1110:begin
			f=FOURTEEN;
			end
			4'b1111:begin
			f=FIFTEEN;
			end
		endcase
	end
	

assign q=seggy[3];//a
assign r=seggy[2];//b
assign s=seggy[1];//c
assign t=seggy[0];//d

assign x=(q&r&~t)|(q&r&s)|(~q&~r&s&~t);//x2
assign y=(r&s&~t)|(q&s&t)|(q&r&~t)|(~q&r&~s&t);//x1
assign z=(~q&~r&~s&t)|(~q&r&~s&~t)|(q&~r&s&t)|(q&r&~s&t);//x0

assign HEX0[0] = z;
assign HEX0[1] = y;
assign HEX0[2] = x;
assign HEX0[3]=f[0];
assign HEX0[4]=f[1];
assign HEX0[5]=f[2];
assign HEX0[6]=f[3];
assign HEX0[7]=1;
endmodule
