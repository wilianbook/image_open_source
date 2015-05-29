vsim work.glbl -voptargs=+acc -L unisims_ver work.Rotate_TB
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/clk
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/rst_n
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/angle
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/in_enable
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/sina
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/cosa
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/count_u
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/count_v
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/mul_x_a1
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/mul_x_a2
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/mul_y_a1
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/mul_y_a2
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/mul_x_p1
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/mul_x_p2
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/mul_y_p1
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/mul_y_p2
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/mul_x_r1
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/mul_x_r2
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/mul_y_r1
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/mul_y_r2
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/add_x
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/add_y
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/reg_frame_out_count_x
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayPipeline/reg_frame_out_count_y
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/frame_out_count_x
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/frame_out_count_y
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/frame_enable
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/frame_in_ready
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/frame_in_data
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/in_range_t
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/in_range_b
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/in_range_l
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/in_range_r
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/out_ready
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayPipeline/out_data
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/clk
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/rst_n
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/angle
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/in_enable
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/sina
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/cosa
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/count_u
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/count_v
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/mul_x_a1
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/mul_x_a2
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/mul_y_a1
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/mul_y_a2
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/mul_x_p1
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/mul_x_p2
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/mul_y_p1
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/mul_y_p2
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/mul_x_r1
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/mul_x_r2
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/mul_y_r1
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/mul_y_r2
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/add_x
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/add_y
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/reg_frame_out_count_x
add wave -noupdate -radix decimal /Rotate_TB/RTTGrayReqAck/reg_frame_out_count_y
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/frame_out_count_x
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/frame_out_count_y
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/frame_enable
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/frame_in_ready
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/frame_in_data
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/in_range_t
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/in_range_b
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/in_range_l
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/in_range_r
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/out_ready
add wave -noupdate -radix unsigned /Rotate_TB/RTTGrayReqAck/out_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1481 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 278
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {7168 ps}
run -all