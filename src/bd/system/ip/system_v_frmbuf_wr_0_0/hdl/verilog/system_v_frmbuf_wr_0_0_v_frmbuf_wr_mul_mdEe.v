
`timescale 1 ns / 1 ps

  module system_v_frmbuf_wr_0_0_v_frmbuf_wr_mul_mdEe_DSP48_0(a, b, p);
input signed [16 - 1 : 0] a; // synthesis attribute keep a "true"
input signed [16 - 1 : 0] b; // synthesis attribute keep b "true"
output signed [16 - 1 : 0] p; // synthesis attribute keep p "true"

assign p = $signed (a) * $signed (b);

endmodule

`timescale 1 ns / 1 ps
module system_v_frmbuf_wr_0_0_v_frmbuf_wr_mul_mdEe(
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



system_v_frmbuf_wr_0_0_v_frmbuf_wr_mul_mdEe_DSP48_0 system_v_frmbuf_wr_0_0_v_frmbuf_wr_mul_mdEe_DSP48_0_U(
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

