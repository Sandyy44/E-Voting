module ClockGen(CLK);
output CLK;
reg CLK;

wire reset;
wire [6:0]led,led2,led3;
wire [9:0]count;

initial CLK=0;
always
#50 CLK = ~CLK;

counter_to_decoder countertodecoder(CLK,reset,led,led2,led3);
endmodule

module ClockGen_DUT();
wire CLK;
reg reset;
wire [9:0]count;
initial
begin
reset=1; #50;
reset=0;
end
ClockGen CG1(CLK);

endmodule