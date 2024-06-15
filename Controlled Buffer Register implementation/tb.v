module tb;

parameter buff_len = 8; // 8 bit memory buffer

reg [buff_len-1:0] x;
reg load, clk, clr;
wire [buff_len-1:0] q;

// Instantiate the buffer_reg module
buffer_reg #(buff_len) uut (
    .q(q),
    .x(x),
    .load(load),
    .clk(clk),
    .clr(clr)
);

// Clock generation
always begin
    #5 clk = ~clk;  // 10 time units clock period
end

// Test sequence
initial begin
    // Initialize inputs
    x = 0;
    load = 0;
    clr = 0;
	 clk = 0;
	 end
	 
always
begin 	
	 #12 x = 4; load = 1 ; 
	 #10 x = 10;  
	 #10 x = 5; 
	 #10 x = 3; 
	 #10 x = 1; 
	 #10 x = 8; 
	 #10 x = 9; 
	 #10 x = 4; 
	 #10 x = 2; 
	 #10 x = 0; 
	 #10 x = 8; 
	 #10 x = 4; 
	 #10 x = 6; 
	 #10 x = 5; 
end

// Monitor signals
initial begin
    $monitor( $time, " x: %b, load: %b, clr: %b, q: %b",x, load, clr, q);
end

initial 
begin 
	#1000 $finish ;   // Finish the simulation
end

endmodule
