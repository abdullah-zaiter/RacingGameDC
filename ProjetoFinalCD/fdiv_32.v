module fdiv_32 (clkin,clkout);
input clkin;
output reg clkout;

integer cont;

initial
   cont=0;
  
always @(posedge clkin)
  begin
	if (cont==781250)
		begin
			cont<=0;
			clkout<=~clkout;
		end
		else
		begin
			cont<=cont+1;
			clkout<=clkout;
		end
   end
endmodule
		