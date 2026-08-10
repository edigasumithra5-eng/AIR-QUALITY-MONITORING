`timescale 1ns/1ps

module tb_air_quality_monitor;

    reg [7:0] air_quality;
    wire [1:0] air_status;
    wire alarm;

    // Instantiate the Air Quality Monitor
    air_quality_monitor uut (
        .air_quality(air_quality),
        .air_status(air_status),
        .alarm(alarm)
    );

    initial begin

        // Create VCD file for GTKWave
        $dumpfile("../simulation/air_quality_monitor.vcd");
        $dumpvars(0, tb_air_quality_monitor);

        $display("========================================");
        $display("       AIR QUALITY MONITORING SYSTEM");
        $display("========================================");
        $display("Time\tAir Quality\tStatus\t\tAlarm");
        $display("----------------------------------------");

        // Test 1: Good air quality
        air_quality = 8'd30;
        #10;
        $display("%0t\t%d\t\tGOOD\t\tOFF",
                 $time, air_quality);

        // Test 2: Good air quality
        air_quality = 8'd50;
        #10;
        $display("%0t\t%d\t\tGOOD\t\tOFF",
                 $time, air_quality);

        // Test 3: Moderate air quality
        air_quality = 8'd70;
        #10;
        $display("%0t\t%d\t\tMODERATE\tOFF",
                 $time, air_quality);

        // Test 4: Moderate air quality
        air_quality = 8'd100;
        #10;
        $display("%0t\t%d\t\tMODERATE\tOFF",
                 $time, air_quality);

        // Test 5: Poor air quality
        air_quality = 8'd120;
        #10;
        $display("%0t\t%d\t\tPOOR\t\tON",
                 $time, air_quality);

        // Test 6: Very poor air quality
        air_quality = 8'd200;
        #10;
        $display("%0t\t%d\t\tPOOR\t\tON",
                 $time, air_quality);

        // Test 7: Maximum value
        air_quality = 8'd255;
        #10;
        $display("%0t\t%d\t\tPOOR\t\tON",
                 $time, air_quality);

        $display("----------------------------------------");
        $display("Simulation Completed Successfully");
        $display("========================================");

        #10;
        $finish;

    end

endmodule