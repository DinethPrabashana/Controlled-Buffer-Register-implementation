module buffer_reg #(parameter buff_len = 4) (q, x, load, clk, clr);

input [buff_len - 1 : 0] x;
input load, clk, clr; 
output [buff_len - 1 : 0] q;

wire [buff_len - 1 : 0] d;

genvar i;
generate 
    for (i = 0; i < buff_len; i = i + 1)
    begin : gen_assignments
        assign d[i] = (x[i] & load) | ((~load) & q[i]);
    end
endgenerate

genvar j;
generate 
    for (j = 0; j < buff_len; j = j + 1)
    begin : gen_dffs
        dff_new df_u(q[j], d[j], clk, clr);
    end
endgenerate

endmodule 