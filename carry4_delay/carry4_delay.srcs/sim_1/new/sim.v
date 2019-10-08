`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2019 17:29:11
// Design Name: 
// Module Name: sim
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


module sim( );
    
    reg CYINIT;
    wire [3:0] CO1;
    wire [3:0] CO2;
    wire [3:0] CO3;
    wire [3:0] CO4;
    wire [3:0] O1;
    wire [3:0] O2;
    wire [3:0] O3;
    wire [3:0] O4;
    
    top uut(
        .CO1(CO1),
        .CO2(CO2),
        .CO3(CO3),
        .CO4(CO4),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .CYINIT(CYINIT)
        );
        
    initial begin
    CYINIT = 0;
    #40 CYINIT = 1;
    end
    
endmodule
