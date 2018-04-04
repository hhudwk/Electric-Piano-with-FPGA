`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:41 05/31/2017 
// Design Name: 
// Module Name:    song1 
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
module song1(clk,ifplay,SongData);	
input ifplay;
input clk;
output [4:0]SongData;
reg [7:0]state;
initial state=0;
reg[4:0]YinFu;
assign SongData=YinFu;
always @(posedge clk)
begin
   state = state + 1'b1;	
	if(!ifplay)begin state=0;end
   if(state>144) begin state = 1;end//计时，以实现循环演奏	
	case(state)
	1,2:YinFu=5'b01000;
	3,4,5,6:YinFu=5'b01001;
	
	7,8,9:YinFu=5'b01001;
	10:YinFu=5'b01000;
	11,12:YinFu=5'b00111;
	
   13,14:YinFu=5'b00101;
	15,16,17:YinFu=5'b00111;
	18:YinFu=5'b01000;
	
	19,20,21,22,23,24:YinFu=5'b00111;
	
	25,26:YinFu=5'b01000;
	27,28,29,30:YinFu=5'b01001;
	
	31,32,33:YinFu=5'b01001;
	34:YinFu=5'b01011;
	35,36:YinFu=5'b01001;
	
	37,38:YinFu=5'b01001;
	39,40:YinFu=5'b01000;
	41,42:YinFu=5'b01001;
	
	43,44,45,46,47,48:YinFu=5'b01001;
	
	49,50:YinFu=5'b01011;
	51,52,53,54:YinFu=5'b01100;
	
	55,56,57:YinFu=5'b01100;
	58:YinFu=5'b01011;
	59,60:YinFu=5'b01001;
	
	61,62:YinFu=5'b01001;
	63,64:YinFu=5'b01011;
	65,66:YinFu=5'b01100;
	
	67,68,69,70,71,72:YinFu=5'b01011;
	
	73,74:YinFu=5'b01000;
	75,76:YinFu=5'b01001;
	77,78:YinFu=5'b01001;
	
	79,80,81:YinFu=5'b01000;
	82:YinFu=5'b01001;
	83,84:YinFu=5'b01000;
	
	85,86:YinFu=5'b01000;
	87,88:YinFu=5'b01001;
	89,90:YinFu=5'b00101;
	
	91,92,93,94,95,96:YinFu=5'b00101;
	
	97:YinFu=5'b01000;
	98:YinFu=5'b01000;
	99:YinFu=5'b01000;
	100:YinFu=5'b00111;
	101,102:YinFu=5'b00101;
	
	103:YinFu=5'b01000;
	104:YinFu=5'b01000;
	105:YinFu=5'b01000;
	106:YinFu=5'b00111;
	107,108:YinFu=5'b00101;
	
	109,110:YinFu=5'b01000;
	111,112:YinFu=5'b01001;
	113,114:YinFu=5'b00111;
	
	115,116,117:YinFu=5'b01000;
	118:YinFu=5'b01001;
	119,120:YinFu=5'b01011;
	
	121:YinFu=5'b01100;
	122:YinFu=5'b01100;
	123:YinFu=5'b01100;
	124:YinFu=5'b01011;
	125,126:YinFu=5'b01001;
	
	127:YinFu=5'b01000;
	128:YinFu=5'b01000;
	129:YinFu=5'b01000;
	130:YinFu=5'b00111;
	131,132:YinFu=5'b00101;
	
	133,134:YinFu=5'b00101;
	135,136:YinFu=5'b00100;
	137,138:YinFu=5'b00101;
	
	139,140,141,142,143,144:YinFu=5'b00101;
	default:YinFu=5'b10101;
	endcase
end


endmodule
