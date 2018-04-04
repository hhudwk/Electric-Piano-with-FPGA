`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:20:15 06/25/2013 
// Design Name: 
// Module Name:    digital_piano 
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
module digital_piano(inclk, ps2_clk, ps2_data, start, reset, out,ChannelSelect,
							key, record, replay, select, hsync, vsync, vga_r, vga_g, vga_b, anodes, cathodes,YinDiao);

//input timbre;
input [2:0]YinDiao;
input  start, reset;		//ϵͳ����
input  inclk; 				//ѡ��100MM����
input  ps2_clk, ps2_data;//PS2����
input  [3:0] key;			//����ѡ��
input record;
input replay;
input  select;				//��������ѡ��
input ChannelSelect;//ѡ�񲥷Ÿ���������
output out;
//wire out_r, out_l;		//��������������������Ŀ���ţ���������������
output [3:0] anodes;		//��ʾ����
output [6:0] cathodes;   //��ʾ����
// FPGA��VGA�ӿ��ź�
output hsync;	//��ͬ���ź�
output vsync;	//��ͬ���ź�
output[2:0] vga_r;
output[2:0] vga_g;
output[1:0] vga_b;    

wire  clk_5MHz;				//ʱ��Ƶ��5MHz

//assign out=ChannelSelect?out_r:out_l;

//�����ӵ���
//�����ٵ���
piano m1(.inclk(inclk), .clk_5MHz(clk_5MHz), .start(start), .reset(reset), .ps2_clk(ps2_clk), .ps2_data(ps2_data), .record(record), .replay(replay), 
			.hsync(hsync), .vsync(vsync), .vga_r(vga_r), .vga_g(vga_g), .vga_b(vga_b),	
			.beep(out), .anodes(anodes), .cathodes(cathodes),.YinDiao(YinDiao[2:0]),.ChannelSelect(ChannelSelect),.key(key[3:0]),.select(select)); 							
//��Ŀ���ţ�����
//song m2(.clk_5MHz(clk_5MHz), .key(key), .select(select), .beep(out_l));


wire nCLR=1;
Divider F5M(.CLK(inclk),.nCLR(nCLR),.CLK_Out(clk_5MHz));
defparam
    F5M.Out_Freq=5000000;

endmodule
