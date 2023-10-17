// Developed by: Aashi Srivastava
// Title : 3-bit Comparator test bench
// Date:17-10-23, 21:10 IST
module comparator_3bit_tb (
    
);
    
    reg [2:0] in1, in2;
    wire out1, out2, out3;


   comparator_3bit c(
    out1, out2, out3, in1, in2
);

initial begin
    $dumpfile("comparator_3bit.vcd");
    $dumpvars(0,comparator_3bit_tb);
    $monitor("A>B=%d A=B=%d A<B=%d in1=%d in2=%d", out1, out2, out3, in1, in2 );
        #40 $finish;
    end
initial begin
    in1=3'b101;
    in2=3'b111;
end
endmodule