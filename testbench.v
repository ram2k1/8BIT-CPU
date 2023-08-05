module system_tb;
  
  reg NCLR, CLK;
  
  system tsys(NCLR, CLK);
  
  always #5 CLK =~CLK;
  
  initial begin
  	CLK = 1'b0;  
    NCLR = 1'b0; #5 NCLR=1'b1; #5 NCLR = 1'b0;
    
    
    // adding and subtracting instruction test
    // Read from memory, add number, write to memory, subtract numbers
    system_tb.tsys.memory.mem[8'h00] = 16'b1010000000000100; // INPUT ACC 7
    system_tb.tsys.memory.mem[8'h01] = 16'b0100000000000101; // ADD ACC 5
    system_tb.tsys.memory.mem[8'h02] = 16'b1110000000001000; // OUTPUT ACC, 8
    system_tb.tsys.memory.mem[8'h03] = 16'b0000000011111111; // LOAD ACC 255
    system_tb.tsys.memory.mem[8'h04] = 16'b0110000000000010; // SUB 2
    system_tb.tsys.memory.mem[8'h05] = 16'b1110000000001001; // OUTPUT ACC, 9
    system_tb.tsys.memory.mem[8'h06] = 16'b1000000000000000; // JUMP  00
    system_tb.tsys.memory.mem[8'h07] = 16'b0000000000000101; // DATA 5
    system_tb.tsys.memory.mem[8'h08] = 16'b0000000000000000; // DATA 0
    system_tb.tsys.memory.mem[8'h09] = 16'b0000000000000000; // DATA 0
    
    #50 // registers initialization.
    
    NCLR = 1'b1; // Reset turned of, processor begins operations.
    
    #400
    $display("\nCheck RAM ");
    $display("Data stored:\t%b \t%b",tsys.memory.mem[8],tsys.memory.mem[9]);
    $finish;
  end
  
endmodule
