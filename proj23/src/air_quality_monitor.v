module air_quality_monitor (
    input  [7:0] air_quality,
    output reg [1:0] air_status,
    output reg alarm
);

    // Air quality status
    // 00 = GOOD
    // 01 = MODERATE
    // 10 = POOR

    always @(*) begin

        if (air_quality <= 8'd50) begin
            air_status = 2'b00;
            alarm = 1'b0;
        end

        else if (air_quality <= 8'd100) begin
            air_status = 2'b01;
            alarm = 1'b0;
        end

        else begin
            air_status = 2'b10;
            alarm = 1'b1;
        end

    end

endmodule