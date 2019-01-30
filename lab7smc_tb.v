module lab7smc_tb;

reg clk;
wire newgo;
wire[7:0]H0,H2,H3,H4,H5;
wire[9:0]L;
reg[1:0]K;
wire[25:0]divby;
wire[25:0]divby_c;
lab7smc paul (
.MAX10_CLK1_50(clk),
.HEX0(H0),
.HEX2(H2),
.HEX3(H3),
.HEX4(H4),
.HEX5(H5),
.LEDR(L),
.KEY(K),
.newgo(newgo),
.divby(divby),
.divby_c(divby_c)
);


initial begin

K[0]=1'b1;
@(posedge clk);
#10;
K[0]=1'b0;
@(posedge clk);
#10;
K[0]=1'b1;
@(posedge clk);
#10;


	repeat(50)begin
		#10;
		@(posedge clk);
		#10;
	$display("divby_c = %b,divby = %b,HEX0 = %b, HEX2 = %b, HEX3 = %b,HEX4 = %b,HEX5 = %b,LEDR = %b, KEY = %b, newgo = %b",divby_c,divby,H0,H2,H3,H4,H5, L,K,newgo);
		
		
	end
	$finish;

end
always begin
#1;
clk=1;
#1;
clk=0;
end

endmodule

