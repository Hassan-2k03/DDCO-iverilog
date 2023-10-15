module decoder(input [2:0] a, output reg [7:0] y);
    always @ (a)
    begin
        y = 8'b00000001 << a;
    end
endmodule
