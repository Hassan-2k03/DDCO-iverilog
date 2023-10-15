module test;
    reg [2:0] a;
    wire [7:0] y;

    decoder d1 (.a(a), .y(y));

    initial 
    begin
        $dumpfile("test.vcd");
        $dumpvars(0, test);

        $monitor("At time %d, input = %b, output = %b", $time, a, y);
        #10 a = 3'b000; #10;
        a = 3'b001; #10;
        a = 3'b010; #10;
        a = 3'b011; #10;
        a = 3'b100; #10;
        a = 3'b101; #10;
        a = 3'b110; #10;
        a = 3'b111; #10;
    end
endmodule
