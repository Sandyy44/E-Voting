module bcd_counter(clk,reset,count);
input clk,reset;
output reg [9:0]count=0;
always @(posedge clk or posedge reset)
if(reset)
count<=0;
else if(count==999)
count<=0;
else
count <= count + 1;

endmodule

module bcd_conter_dut();
wire clk;
reg reset;
wire [9:0]count;
initial
begin
reset=1; #50;
reset=0;
end
bcd_counter bcd_cnt(clk,reset,count);
endmodule