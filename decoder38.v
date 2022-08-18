module decoder38(
	a,b,c,data
);

input  wire a;
input  wire b;
input  wire c;
output reg  [7:0]data;

always @( a,b,c) begin
    case ({a,b,c})
    3'd0:  data=8'b0000_0001;
    3'd1:  data=8'b0000_0010;
    3'd2:  data=8'b0000_0100;
    3'd3:  data=8'b0000_1000;
    3'd4:  data=8'b0001_0000;
    3'd5:  data=8'b0010_0000;
    3'd6:  data=8'b0100_0000;
    3'd7:  data=8'b1000_0000;
        
    endcase
    
end

endmodule 
