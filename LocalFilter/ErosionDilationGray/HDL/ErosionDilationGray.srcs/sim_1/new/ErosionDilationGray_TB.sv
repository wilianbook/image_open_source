`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: None
// Engineer: Dai Tianyu (dtysky)
// 
// Create Date: 2015/04/18 14:41:22
// Design Name: ErosionDilationGray
// Module Name: ErosionDilationGray_TB
// Project Name: Image processing project
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module CLOCK (
	output bit clk
	);
	
	always #(100ps) begin
		clk = ~clk;
	end

endmodule

module ErosionDilationGray_TB();

	//For Rows8x512
	parameter im_width = 320;
	parameter rows_width = 3;
	//For Window
	parameter window_size = 3;
	//Can't be changed in this IP.
	parameter color_width = 8;

	bit clk, rst_n;
	bit in_enable;
	bit[color_width - 1 : 0] in_data;
	bit row_enable;
	bit[color_width * rows_width - 1 : 0] row_data;
	bit win_enable;
	bit[color_width * window_size * window_size - 1 : 0] win_data;
	bit out_enableD;
	bit[color_width - 1 : 0] out_dataD;
	bit out_enableE;
	bit[color_width - 1 : 0] out_dataE;

	CLOCK CLOCK1(clk);
	Rows8x512 #(im_width,rows_width) Rows1 (clk, rst_n, in_enable, in_data, row_enable, row_data);
	Window #(color_width,window_size) Window1(clk, rst_n, row_enable, row_data, win_enable, win_data);
	ErosionDilationGray #(color_width, window_size, 3) Dilation1(clk, rst_n, 1'b1, 9'b010111010, win_enable, win_data, out_enableD, out_dataD);
	ErosionDilationGray #(color_width, window_size, 3) Erosion1(clk, rst_n, 1'b0, 9'b010111010, win_enable, win_data, out_enableE, out_dataE);

	integer fi, foD, foE;
	string fname[$];
	string ftmp, imsize;
	int fsize;

	bit now_startE;
	bit now_startD;

	initial begin
		fi = $fopen("imgindex.dat","r");
		while (!$feof(fi)) begin
			$fscanf(fi,"%s",ftmp);
			fname.push_front(ftmp);
		end
		$fclose(fi);
		fsize = fname.size();
		repeat(1100) @(posedge clk);
		rst_n = 1;
		@(posedge clk);
		@(posedge clk);
		@(posedge clk);
		for (int i = 0; i < fsize; i++) begin;
			ftmp = fname.pop_back();
			fi = $fopen({ftmp,".dat"},"r");
			foD = $fopen({ftmp,"D.res"},"w");
			foE = $fopen({ftmp,"E.res"},"w");
			//Keep xsize and ysize
			$fscanf(fi,"%s",imsize);
			$fwrite(foD,"%s\n",imsize);
			$fwrite(foE,"%s\n",imsize);
			$fscanf(fi,"%s",imsize);
			$fwrite(foD,"%s\n",imsize);
			$fwrite(foE,"%s\n",imsize);
			rst_n = 0;
			in_enable = 0;
			now_startE = 0;
			now_startD = 0;
			repeat(3) @(posedge clk);
			rst_n = 1;
			while (!$feof(fi)) begin 
				@(posedge clk);
				$fscanf(fi,"%b",in_data);
				in_enable = 1;
				if(out_enableD) begin
					if(now_startD == 0)
						$display("%m: at time %t ps , Dilation%d start!", $time, i);
					now_startD = 1;
					$fwrite(foD,"%d\n",out_dataD);
				end
				if(out_enableE) begin
					if(now_startE == 0)
						$display("%m: at time %t ps , Erosion%d start!", $time, i);
					now_startE = 1;
					$fwrite(foE,"%d\n",out_dataE);
				end
			end
			$fclose(fi);
			$fclose(foD);
			$fclose(foE);
		end
		$finish;
	end

endmodule