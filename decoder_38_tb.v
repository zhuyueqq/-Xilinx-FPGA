`timescale 1ns/100ps

module decoder_38_tb ;


reg a;
reg b;
reg c;
wire [7:0]data;

decoder_38 decoder_38_0 (
    .a(a),
    .b(b),
    .c(c),
    .data(data)
);


initial begin
    a=0;b=0;c=0;
    #200;
    a=0;b=0;c=1;
    #200;
    a=0;b=1;c=0;
    #200;
    a=0;b=1;c=1;
    #200;
    a=1;b=0;c=0;
    #200;
    a=1;b=0;c=1;
    #200;
    a=1;b=1;c=0;
    #200;
    a=1;b=1;c=1;
    #200;
    $stop;
end

endmodule
