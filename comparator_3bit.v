// Developed by: Aashi Srivastava
// Title : 3-bit Comparator
// Date:17-10-23, 21:10 IST
module comparator_3bit (
    out1, out2, out3, in1, in2
);
    input [2:0] in1, in2;
    output out1, out2, out3;
    wire wire1, wire2, wire3, wire4, wire5, wire6 ,wire7, wire8, wire9, wire10, wire11, wire12 , wire13, wire14 ;
    reg y;

    assign wire1 = ~in1[0];
    assign wire2 = ~in1[1];
    assign wire3 = ~in1[2];
    assign wire4 = ~in2[0];
    assign wire5 = ~in2[1];
    assign wire6 = ~in2[2];

    and a1(wire7, in1[2], wire6);
    xnor x1(wire8, in1[1], in2[1]);
    and a2(wire9, in1[1], wire5);
    and a3(wire10, wire8, wire9);
    xnor x2(wire11, in1[1], in2[1]);
    and a4(wire12, in1[0], wire4);

    assign  wire13 = wire8 & wire11 & wire12;
    assign out1 = wire7| wire10 | wire13;
    xnor x3 (wire14, in1[0], in2[0]);

    assign out2 = wire8 & wire11 & wire14;

    always @(*)
    begin
        if(out1==1 | out2== 1)
        y=0;
        else
        y=1;
    end
    assign out3=y;
endmodule