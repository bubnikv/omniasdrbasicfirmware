//`#start header` -- edit after this line, do not edit this line
/*

IambicV: Iambic keyer in Verilog
Copyright © 2011 Stephen C. Trier

This file is part of IambicV

IambicV is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

IambicV is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with IambicV.  If not, see <http://www.gnu.org/licenses/>.

*/

// Iambic Keyer
// Stephen Trier KG8IH
// http://skywired.net/
// sct (at) skywired.net

`include "cypress.v"

//
// Inputs:
//    rst_n - Asynchronous reset input, internally synchronized to clk.
//    clk - input clock signal, active rising edge, 100 Hz nominal
//    speed - number of clock edges per dit.
//        speed = (f(clk) * 60) / (wpm * 50)     (Using PARIS standard timing.)
//        At 1000 Hz clk, 12 wpm is speed=100, 5 wpm is speed = 240, and 20 wpm is speed = 60
//    modeb - Mode B flag.  Set to 1 if operating in mode B, 0 if in mode A.
//    dit - dit paddle input
//    dah - dah paddle input
//
// Output:
//    key - Morse code keyed output
//

module iambic(input rst_n, input clk, input [7:0] speed, input modeb, input dit, input dah, output key);
    reg [7:0] count;
    reg [1:0] reps;
    
    wire start, nextDah;
    reg isDah, iamb;
    reg rst_q1, rst_local;

    /*
     * Local reset: Synchronize the release of reset with the clk
     *
     * This means that the keyer won't be available for two clock cycles after reset is released.
     */
    always @(negedge rst_n or posedge clk)
    begin
        if (rst_n == 0)
            {rst_q1,rst_local} <= 2'b00;
        else
            {rst_q1,rst_local} <= {1'b1,rst_q1};
    end

    /*
     * start is true when we have something to send.
     * 
     * Those times are when the dit paddle is down, when the dah paddle is down, and when we have
     * a pending inserted dit or dah (when iamb == 1)
     *
     * start is not a complete calculation of whether to send. It is only examined when the counter
     * is 0, and some extra qualifications kick in if modeb == 0.
     */
    assign start = (modeb && iamb) || dit || dah;

    /*
     * nextDah is true when the next symbol should be a dah.
     *
     * If iamb == 1, nextDah is the opposite of our current dah state (isDah)
     * Otherwise, nextDah is 1 if and only if the dah paddle is 1.
     */
    assign nextDah = iamb ? !isDah : dah;

    always @(posedge clk or negedge rst_local)
    begin
        if (rst_local == 0)
            begin
                /*
                 * Handle reset by clearing our state
                 */
                count <= 0;
                reps <= 0;
                isDah <= 0;
                iamb <= 0;
            end
        else if (reps == 0 && count == 0)       /* If the counter is stopped at zero */
            begin
                if (!modeb && !dit && !dah)
                    begin
                        /*
                         * Special case for mode A: if neither paddle is depressed,
                         * don't start another dit or dah.  Also, clear the iamb flag
                         * so the keyer doesn't accidentally pick the wrong value of
                         * nextDah when the start condition does come around.
                         */

                        iamb <= 0;
                    end
                else if (start)
                    begin
                        count <= speed;           /* Start the counter */
                        reps <= nextDah ? 3 : 1;  /* Dahs are three times as long as dits */
                        isDah <= nextDah;         /* Save whether this is a dit or a dah */
                        iamb <= 0;                /* Clear the iamb flag to get ready for another iamb */
                    end
            end
        else                                    /* Otherwise, the counter is running... */
            begin
                if (count != 0)
                    count <= count - 1;           /* Decrement the dit-time counter */
                else if (reps != 0)     // and count == 0
                    begin
                        count <= speed;           /* Reset the dit-time counter... */
                        reps <= reps - 1;         /* ... and decrement the reps count that makes dahs longer than dits */
                    end

                if (isDah ? dit : dah)            /* Check for an iamb, including dot/dash insertion */
                    iamb <= 1;                    /* This is an iamb -- flag it for later */
            end
    end

    /*
     * The reps counter goes from 3 to 0 for dahs and 1 to 0 for dits.
     * The non-zero values are the key-down intervals, so dahs are three times as long as dits.
     * When reps == 0, though, the keyer is either timing an inter-symbol space (if count != 0)
     * or is idle and waiting (if count == 0).  Hence, the key should be down when reps == 0 and
     * down when reps == 0.
     */
    assign key = (reps != 0);

endmodule

//[] END OF FILE
