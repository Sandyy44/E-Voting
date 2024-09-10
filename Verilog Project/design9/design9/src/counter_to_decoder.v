module counter_to_decoder(clk,reset,led,led2,led3);

input clk,reset;
output [6:0]led,led2,led3;
wire [9:0]count;

bcd_counter bcd_cnt(clk,reset,count);

wire [3:0]digit1 =count%10;
wire [3:0]digit2 = (count/10)-(count/100)*10;
wire [3:0]digit3 =count/100;


decoder_7seg d7seg(digit1[3],digit1[2],digit1[1],digit1[0],
led[6],led[5],led[4],led[3],led[2],led[1],led[0]);

decoder_7seg d7seg2(digit2[3],digit2[2],digit2[1],digit2[0],
led2[6],led2[5],led2[4],led2[3],led2[2],led2[1],led2[0]);

decoder_7seg d7seg3(digit3[3],digit3[2],digit3[1],digit3[0],
led3[6],led3[5],led3[4],led3[3],led3[2],led3[1],led3[0]);


endmodule
