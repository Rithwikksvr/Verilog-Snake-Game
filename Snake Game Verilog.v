`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:58 10/21/2017 
// Design Name: 
// Module Name:    pro_v_2_0 
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
//////////////////////////////////////////////////////////////////////////////////`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:37:43 10/14/2017 
// Design Name: 
// Module Name:    pro_1 
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
module pro_v_2_0(a,clk,colomn,r,l,u,d
 );

integer i = 0;
integer j=0;
input clk;
input l,r,u,d;
output reg [6:0] a;
output reg [4:0] colomn;
reg [6:0] b = 7'b1100000; 
reg [6:0]  m [4:0];
reg [3:0] motion;
reg [3:0] state;
reg [6:0] sample_var;
integer i_block2=0;
integer light = 0;
integer curr_coordinate=0;
integer curr_coordinate_x=0;
integer curr_coordinate_y=0;
integer food_count = 0;
reg [2:0] x_cor [2:0];
reg [2:0] y_cor [2:0];
reg [2:0] rand_x [34:0];
reg [2:0] rand_y [34:0];
integer food_x=0;
integer food_y=0;
integer i_block3=0;

initial begin

m[0]=7'b0000000;
m[1]=7'b0000000;
m[2]=7'b0000000;
m[3]=7'b0000000;
m[4]=7'b0000000;
motion = 4'b1000;
state = 4'b1000;
x_cor[0] = 3'b001;
x_cor[1] = 3'b010;
x_cor[2] = 3'b011;
//x_cor[3] = 3'b001;
y_cor[0] = 3'b100;
y_cor[1] = 3'b100;
y_cor[2] = 3'b100;
//y_cor[3] = 3'b001;
rand_x[10] = 3'b001;
rand_y[10] = 3'b010;
rand_x[0] = 3'b001;
rand_y[0] = 3'b010;
rand_x[29] = 3'b101;
rand_y[29] = 3'b001;
rand_x[4] = 3'b110;
rand_y[4] = 3'b000;
rand_x[16] = 3'b110;
rand_y[16] = 3'b010;
rand_x[19] = 3'b010;
rand_y[19] = 3'b010;
rand_x[25] = 3'b101;
rand_y[25] = 3'b001;
rand_x[6] = 3'b011;
rand_y[6] = 3'b001;
rand_x[8] = 3'b010;
rand_y[8] = 3'b011;
rand_x[13] = 3'b001;
rand_y[13] = 3'b011;
rand_x[20] = 3'b000;
rand_y[20] = 3'b001;
rand_x[23] = 3'b010;
rand_y[23] = 3'b010;
rand_x[1] = 3'b001;
rand_y[1] = 3'b001;
rand_x[18] = 3'b110;
rand_y[18] = 3'b100;
rand_x[14] = 3'b010;
rand_y[14] = 3'b011;
rand_x[15] = 3'b101;
rand_y[15] = 3'b010;
rand_x[30] = 3'b100;
rand_y[30] = 3'b011;
rand_x[9] = 3'b011;
rand_y[9] = 3'b000;
rand_x[33] = 3'b000;
rand_y[33] = 3'b000;
rand_x[32] = 3'b000;
rand_y[32] = 3'b100;
rand_x[24] = 3'b100;
rand_y[24] = 3'b000;
rand_x[21] = 3'b010;
rand_y[21] = 3'b000;
rand_x[17] = 3'b101;
rand_y[17] = 3'b100;
rand_x[3] = 3'b011;
rand_y[3] = 3'b100;
rand_x[2] = 3'b100;
rand_y[2] = 3'b000;
rand_x[28] = 3'b011;
rand_y[28] = 3'b010;
rand_x[34] = 3'b000;
rand_y[34] = 3'b011;
rand_x[7] = 3'b100;
rand_y[7] = 3'b000;
rand_x[11] = 3'b100;
rand_y[11] = 3'b011;
rand_x[22] = 3'b000;
rand_y[22] = 3'b001;
rand_x[5] = 3'b001;
rand_y[5] = 3'b011;
rand_x[26] = 3'b011;
rand_y[26] = 3'b100;
rand_x[27] = 3'b110;
rand_y[27] = 3'b001;
rand_x[12] = 3'b001;
rand_y[12] = 3'b100;
rand_x[31] = 3'b110;
rand_y[31] = 3'b010;



end
integer k=0;
integer l1=0;
integer l2=0;
integer i3=0;
integer index_of_rand =0;
integer l3=0;
integer food_xcor=0;
integer food_ycor=0;
integer food_index=0;
integer ate_food=1;
integer flag3=0;
always @(posedge clk)
	begin
	i=i+1;
	if (i==300000)
		
		begin
			a=7'b0000000;
			colomn = 5'b11111;
			i=0;
			colomn[k] = 0;
			b = m[k];
			a = b;
			k = k+1;
			if (k==5)
				begin
					k=0;
				end
		end
end

always@(l,r,u,d) begin
	if(l==1)
		motion = 4'b1000;
	else if(r==1)
		motion = 4'b0100;
	else if(u==1)
		motion = 4'b0010;
	else if(d==1)
		motion = 4'b0001;
end



always@(posedge clk)
		begin
		i_block2=i_block2+1;
			if(i_block2==50000000)
			
				begin
					i_block2=0;
					if(ate_food==1)
					begin
					ate_food=0;
					food_xcor = rand_x[food_index];
					food_ycor = rand_y[food_index];
					end
					
								for(curr_coordinate = 0;curr_coordinate < 2;curr_coordinate = curr_coordinate+1)
									begin
										x_cor[curr_coordinate] <= x_cor[curr_coordinate+1] ;
										y_cor[curr_coordinate] <= y_cor[curr_coordinate+1] ;
									end
									
								if(motion==4'b0100)
									begin
							
									x_cor[curr_coordinate] <= x_cor[curr_coordinate] + 1;
									//y_cor[curr_coordinate] <= y_cor[curr_coordinate-1];
									if (x_cor[curr_coordinate]==6)
									begin
										x_cor[curr_coordinate] <= 0 ;
									end
								
								
								
									end
								if(motion==4'b1000)
									begin
							
									x_cor[curr_coordinate] <= x_cor[curr_coordinate] - 1;
									//y_cor[curr_coordinate] <= y_cor[curr_coordinate-1] ;
									
									
										if (x_cor[curr_coordinate]==0)
										begin
											x_cor[curr_coordinate] <= 6 ;
										end
									end
								if(motion==4'b0010)
									begin
									
									//x_cor[curr_coordinate] <= x_cor[curr_coordinate-1];
									y_cor[curr_coordinate] <= y_cor[curr_coordinate]-1 ;
									
									
										if (y_cor[curr_coordinate]==0)
										begin
											y_cor[curr_coordinate] <= 4 ;
										end
									end
								if(motion==4'b0001)
									begin
									
									//x_cor[curr_coordinate] <= x_cor[curr_coordinate-1];
									y_cor[curr_coordinate] <= y_cor[curr_coordinate]+1 ;
									
									
										if (y_cor[curr_coordinate]==4)
										begin
											
											y_cor[curr_coordinate] <= 0 ;
										end
									end								
								
								
								/*
								light = x_cor[0];
								sample_var[light] = 1;
								light = x_cor[1];
								sample_var[light] = 1;
								light = x_cor[2];
								sample_var[light] = 1;
								m[1] = sample_var;
								*/
								/*
								m[0] = 7'b0000000;
								m[1] = 7'b0000000;
								m[2] = 7'b0000000;
								m[3] = 7'b0000000;
								m[4] = 7'b0000000;
								sample_var = 7'b1000000;
								light = y_cor[0];
								m[light] = sample_var;
								light = y_cor[1];
								m[light] = sample_var;
								light = y_cor[2];
								m[light] = sample_var;
								*/
								//m[4][5] = 1;
								
								
								if(x_cor[curr_coordinate]==food_xcor && y_cor[curr_coordinate]==food_ycor)
								begin
								
								
									
									
									food_xcor = rand_x[food_index];
									food_ycor = rand_y[food_index];
								
								end
								for(l1=0;l1<5;l1=l1+1)
									begin
										sample_var = 7'b0000000;
										m[l1]=sample_var;
										for(l2=0;l2<3;l2 = l2+1)
											begin
												l3 = y_cor[l2];
												if(l3==l1)
													begin
														light = x_cor[l2];
														sample_var[light] = 1;
													end
											end
									m[l1] = sample_var;	
									end
									
									sample_var = m[food_ycor];
									sample_var[food_xcor] = 1;
									m[food_ycor] = sample_var;
						end
						
						
						
						
						
						
						
						
						
						
					end
					

	 
always@(posedge clk) begin
	i_block3=i_block3+1;
	if(i_block3==50000000)
	begin
	i_block3=0;
	
	food_index=food_index+1;
	
	if(food_index==34)
	begin
		food_index = 0;
	
	end
	end
	end

endmodule
