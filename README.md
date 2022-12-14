# 8-Bit-Counter/Ramp-Type-ADC-using-eSim
This repository presents the mixed signal design of a Ramp Type ADC. The Digital part of the circuit i.e Ramp Type Counter and And Gate is simulated on Makerchip tool. All the Simulations are done using Esim and Makerchip tool only. Since the counter used is taken to be 8-Bit, the input voltage that can be converted to analog is limited to 0-3.3V. A 8-Bit Digital to Analog Converter (DAC) is used as an internal part, having the step size of 12.89mV.

# Table of Contents
- [Introduction](#introduction)
- [Tool Used](#tool-used)
- [Reference Circuit Diagram](#reference-circuit-diagram)
- [Expected Waveform](#expected-waveform)
- [Schematic](#schematic)
- [Verilog Code For Ramp Counter](#verilog-code-for-ramp-counter)
- [Verilog Code for And Gate](#verilog-code-for-and-gate)
- [Waveforms](#waveforms)
- [Generated Netlist](#generated-netlist)
- [Result](#result)
- [Generation of Digital Block Model using Ngveri Tab](#generation-of-digital-block-model-using-ngveri-tab)
- [Steps to Run Simulation of Project](#steps-to-run-simulation-of-project)
- [Reference](#reference)
- [Acknowledgement](#acknowledgement)
- [Author](#author)

# Introduction
Analog to Digital Converter is an electronic device that converts the analog data into digital form. Due to various advantages of the digital signals over analog signals such as easy processing and storage. The analog signal are converted into digital signals and the processing is done, after processing the signal it is converted back to analog form to get the original output. In this conversion from Analog to Digital, ADCs plays a vital role.

In this paper we will study about Counter type/ Ramp type ADC. It consists of following components such as: Counter, DAC, AND gate, Op-Amp. The block diagram of the Counter type/ Ramp type DAC is shown in the Reference Circuit.

In Counter/Ramp type ADC, the analog voltage to be converted is applied to non-inverting terminal of the Op-Amp based comparator Circuit and the inverting terminal of comparator is connected to the output of the DAC. For the conversion, the binary counter is initially RESET and hence the output of the output of the DAC is 0V. The analog input applied to comparator is continuously compared with the DAC output during the conversion. If the analog input is greater than the DAC output, the comparator output is High and the counter is incremented and so the output from the DAC. Now again the DAC output is compared with the applied input if again input voltage (VA) is greater than the applied voltage, the counter is increment and so the DAC output. This process is repeated until the DAC output becomes greater than the applied input voltage by some threshold VT volts and the output of the comparator becomes Low. 

# Tool Used
## eSim
eSim (previously known as Oscad / FreeEDA) is a free/libre and open source EDA tool for circuit design, simulation, analysis and PCB design. It is an integrated tool built using free/libre and open source software such as KiCad, Ngspice, Verilator, makerchip-app, sandpiper-saas and GHDL. eSim is released under GPL.

eSim offers similar capabilities and ease of use as any equivalent proprietary software for schematic creation, simulation and PCB design, without having to pay a huge amount of money to procure licenses. Hence it can be an affordable alternative to educational institutions and SMEs. It can serve as an alternative to commercially available/licensed software tools like OrCAD, Xpedition and HSPICE.

For more details refer: https://esim.fossee.in/home

## NgSpice
NgSpice is the open source spice simulator for electric and electronic circuits. Such a circuit may comprise of JFETs, bipolar and MOS transistors, passive elements like R, L, or C, diodes, transmission lines and other devices, all interconnected in a netlist. Digital circuits are simulated as well, event driven and fast, from single gates to complex circuits. And you may enter the combination of both analog and digital as a mixed-signal circuit.

For more details refer: http://ngspice.sourceforge.net/docs.html

## Makerchip
It is an Online Web Browser IDE for Verilog/System-verilog/TL-Verilog Simulation.

For More Details Refer: https://www.makerchip.com/

## Verilator
It is a tool which converts Verilog code to C++ objects.

For More Details Refer: https://www.veripool.org/verilator/

# Reference Circuit Diagram
![DAC19](https://user-images.githubusercontent.com/65559674/194708634-57d9dacd-a0b3-4804-b79d-ef2f7fc82cbf.png)

# Expected Waveform
![ramp_adc](https://user-images.githubusercontent.com/65559674/194708654-d9d495e0-e7e3-4cf5-ac67-2bf5a848f248.PNG)

# Schematic
![circuit](https://user-images.githubusercontent.com/65559674/194708697-1a59d02b-0420-496e-8ce9-78bced5669e6.jpg)

# Verilog Code for Ramp Counter
```
module ravi_counter(out,clk,rst);
  output reg [7:0]out;
  input clk, rst;
  initial
    begin
      out = 8'b0;
    end
  always@(posedge clk)
    begin
      out = out + 1;
    end
  always@(rst)
    begin
      if(rst == 1)
        begin
          out = 8'b0;
        end
    end
endmodule  
```

# Verilog Code for And Gate
```
module ravi_an(out,in_a,in_b);
  output out;
  input in_a,in_b;
  assign out = in_a && in_b ;
endmodule
```

# Waveforms
## 1. Vin = 1.2v
- ### Reset Signal
![reset_high](https://user-images.githubusercontent.com/65559674/194744673-458282b9-7be2-4aec-9913-572de36bd628.jpg)
- ### Clock Signal
![clock_high](https://user-images.githubusercontent.com/65559674/194744754-b510f640-366c-444f-8dc0-80f2cd721785.jpg)
- ### Comparator Output
![comp_out_high](https://user-images.githubusercontent.com/65559674/194744852-4d763e33-b72b-4c51-992a-ea2c117c491e.jpg)
- ### Analog Output Of Counter
![comp_high](https://user-images.githubusercontent.com/65559674/194744578-76f1b6eb-4638-46aa-b46b-21759ff03606.jpg)
## 2. Vin = 0.2
- ### Reset Signal, Clock Signal and Analog Output Of Counter
![dac_out_low](https://user-images.githubusercontent.com/65559674/194745952-54cfc3f3-8c44-4ddb-a507-04b2663c973f.jpg)
- ### Digital Output Of Counter
![count_out_low](https://user-images.githubusercontent.com/65559674/194745960-c3cd9d9a-fa0c-4ee9-aa02-e537bda4ec52.PNG)

# Generated NetList
```
* c:\users\lenovo\esim-workspace\ravi_adc\ravi_adc.cir

.include avsddac_3v3_sky130_v2.sub
.include rropamp31.sub
.include "E:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130_fd_pr__model__inductors.model.spice"
.include "E:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130_fd_pr__model__linear.model.spice"
.include "E:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130_fd_pr__model__pnp.model.spice"
.include "E:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130_fd_pr__model__diode_pd2nw_11v0.model.spice"
.lib "E:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130.lib.spice" tt
.include "E:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130_fd_pr__model__diode_pw2nd_11v0.model.spice"
.include "E:\FOSSEE\eSim\library\sky130_fd_pr\models\sky130_fd_pr__model__r+c.model.spice"
* u5  net-_u1-pad3_ net-_u10-pad2_ net-_u5-pad3_ net-_u5-pad4_ net-_u5-pad5_ net-_u5-pad6_ net-_u5-pad7_ net-_u5-pad8_ net-_u5-pad9_ net-_u5-pad10_ ravi_counter
* u1  net-_u1-pad1_ net-_u1-pad2_ net-_u1-pad3_ ravi_an
x2 net-_x2-pad1_ net-_x2-pad1_ gnd gnd gnd net-_u9-pad9_ net-_u9-pad10_ net-_u9-pad11_ net-_u9-pad12_ net-_u9-pad13_ net-_u9-pad14_ net-_u9-pad15_ net-_u9-pad16_ dac_out gnd avsddac_3v3_sky130_v2
* u9  net-_u5-pad10_ net-_u5-pad9_ net-_u5-pad8_ net-_u5-pad7_ net-_u5-pad6_ net-_u5-pad5_ net-_u5-pad4_ net-_u5-pad3_ net-_u9-pad9_ net-_u9-pad10_ net-_u9-pad11_ net-_u9-pad12_ net-_u9-pad13_ net-_u9-pad14_ net-_u9-pad15_ net-_u9-pad16_ dac_bridge_8
v5 net-_x2-pad1_ gnd  dc 3.3
* u4  comp_out1 net-_u1-pad1_ adc_bridge_1
v1 net-_x1-pad4_ gnd  dc 0.2
v2 net-_x1-pad1_ gnd  dc 3.3
v3  clk gnd pulse(0 1.8 0 0 0 0.5m 1m)
* u6  clk net-_u1-pad2_ adc_bridge_1
* u7  dac_out plot_v1
* s c m o d e
* u3  clk plot_v1
* u2  comp_out1 plot_v1
x1 net-_x1-pad1_ gnd dac_out net-_x1-pad4_ comp_out1 rropamp31
v4  reset gnd pulse(0 1.8 0 0 0 0.5m 25m)
* u8  reset plot_v1
* u10  reset net-_u10-pad2_ adc_bridge_1
a1 [net-_u1-pad3_ ] [net-_u10-pad2_ ] [net-_u5-pad3_ net-_u5-pad4_ net-_u5-pad5_ net-_u5-pad6_ net-_u5-pad7_ net-_u5-pad8_ net-_u5-pad9_ net-_u5-pad10_ ] u5
a2 [net-_u1-pad1_ ] [net-_u1-pad2_ ] [net-_u1-pad3_ ] u1
a3 [net-_u5-pad10_ net-_u5-pad9_ net-_u5-pad8_ net-_u5-pad7_ net-_u5-pad6_ net-_u5-pad5_ net-_u5-pad4_ net-_u5-pad3_ ] [net-_u9-pad9_ net-_u9-pad10_ net-_u9-pad11_ net-_u9-pad12_ net-_u9-pad13_ net-_u9-pad14_ net-_u9-pad15_ net-_u9-pad16_ ] u9
a4 [comp_out1 ] [net-_u1-pad1_ ] u4
a5 [clk ] [net-_u1-pad2_ ] u6
a6 [reset ] [net-_u10-pad2_ ] u10
* Schematic Name:                             ravi_counter, NgSpice Name: ravi_counter
.model u5 ravi_counter(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             ravi_an, NgSpice Name: ravi_an
.model u1 ravi_an(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             dac_bridge_8, NgSpice Name: dac_bridge
.model u9 dac_bridge(out_low=0.0 out_high=5.0 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
* Schematic Name:                             adc_bridge_1, NgSpice Name: adc_bridge
.model u4 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             adc_bridge_1, NgSpice Name: adc_bridge
.model u6 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             adc_bridge_1, NgSpice Name: adc_bridge
.model u10 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
.tran .1e-03 25e-03 0e-03

* Control Statements 
.control
run
set color0 = white
set color1 = black
set color2 = red
set xbrushwidth = 2
print allv > plot_data_v.txt
print alli > plot_data_i.txt
plot v(dac_out) v(clk)/9+1 v(reset)/9+1.5
.endc
.end
```

# Result
The Design and simulation of the Ramp type ADC is finally done. The ouput has a very small error of around 1% which is quite minimal and in many inputs the output had close 0.1% error. The plots obtained are mathing the excepted waveforms.

# Generation of Digital Block Model using Ngveri Tab
1. Open eSim
2. Run NgVeri-Makerchip
3. Add top level verilog file in Makerchip Tab
4. Click on NgVeri tab
5. Add dependency files
6. Click on Run Verilog to NgSpice Converter
7. Debug if any errors
8. Model created successfully

# Steps to Run Simulation of Project
1. Clone this project using the following command:
2. To run the project in eSim:
3. Run eSim
4. Load the project
5. Open eeSchema
6. Simulate using ngSpice

# Reference
1. Design with operational amplifiers and analog integrated circuits / Sergio Franco, San Francisco State University. ??? Fourth edition.
2. https://www.elprocus.com/counter-type-adc-analog-to-digitalconverter/

# Acknowledgement
1. FOSSEE, IIT Bombay
2. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
3. Sumanto Kar, eSim Team, FOSSEE

# Author
Ravi Prakash Vishwakarma, Electronics and Communication Engineering Department, B.Tech Final Year, Madan Mohan Malaviya University of Technology, Gorakhpur, U.P.
