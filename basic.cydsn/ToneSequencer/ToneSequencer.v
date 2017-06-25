//`#start header` -- edit after this line, do not edit this line
// ========================================
//
// Copyright YOUR COMPANY, THE YEAR
// All Rights Reserved
// UNPUBLISHED, LICENSED SOFTWARE.
//
// CONFIDENTIAL AND PROPRIETARY INFORMATION
// WHICH IS THE PROPERTY OF your company.
//
// ========================================
`include "cypress.v"
//`#end` -- edit above this line, do not edit this line

//`#start body` -- edit after this line, do not edit this line

//        Your code goes here

//`#end` -- edit above this line, do not edit this line

//`#start footer` -- edit after this line, do not edit this line
//`#end` -- edit above this line, do not edit this line

module ToneSequencer(input clk, input key, input nrq1, input nrq2, input nrq3, output [1:0] mux);
    reg [1:0] count;

    always @(posedge clk)
    begin
        if (count == 0)
            begin
                // Key down, start the tone, or continue with the idle state.
                count <= key ? 1 : 0;
            end
        else if ((count == 1 && nrq1) || (count == 2 && nrq2))
            begin
                // Still key down, continue with the tone, or key up, stop the tone.
                count <= key ? 2 : 3;
            end
        else if (count == 3 && nrq3)
            begin
                // Key down again or idle.
                count <= key ? 1 : 0;
            end
    end

    assign mux = count;

endmodule

//[] END OF FILE
