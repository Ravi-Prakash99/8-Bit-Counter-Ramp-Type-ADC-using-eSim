# 8-Bit-Counter/Ramp-Type-ADC-using-eSim
This repository presents the mixed signal design of a SAR ADC. The Digital part of the circuit i.e SAR block and control block is simulated on Makerchip tool. All the Simulations are done using Esim and Makerchip tool only. Since the counter used is taken to be 8-Bit, the input voltage that can be converted to analog is limited to 0-3.3V. A 8-Bit Digital to Analog Converter (DAC) is used as an internal part, having the step size of 12.89mV.

# Table of Contents
- Introduction
- Tool Used
- Refrence Circuit Diagram
- Expected Waveform
- Approach
- Schematic
- Verilog Code For SAR Block
- Verilog Code for Control Block
- Waveforms
- Generated Netlist
- Result
- Generation of Digital Block Model using Ngveri Tab
- Steps to Run Simulation of Project
- Reference
- Author

# Introduction
The world surrounding us has only analog signals which were utilised and analysed by the engineers before the digital era. In the digital era all the signals are digital in nature and hence the usage of analog to digital converters(adc's) has increased significantly. Digital domain provides the facilities of higher speeds, storage, high immunity to noise and what not. In order to have maximum benefits we need are adc's to be fast and efficient. SAR type adc is one of the fastest adc which can be designed. An SAR(Successive Approximation Register) block take only number of pulses equal to the number of bits. Where adc like counter type counts to 2 power N times, an SAR block does that in N pulses only.

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

# Approach
The analog input voltage (VIN) is held constant. To implement the binary search algorithm, the N-bit register is first set to midscale (that is, 100... .00, where the MSB is set to 1). This forces the DAC output (VDAC) to be VREF/2, where VREF is the reference voltage provided to the ADC. A comparison is then performed to determine if VIN is less than, or greater than, VDAC. If VIN is greater than VDAC, the comparator output is a logic high, or 1, and the MSB of the N-bit register remains at 1. Conversely, if VIN is less than VDAC, the comparator output is a logic low and the MSB of the register is cleared to logic 0. The SAR control logic then moves to the next bit down, forces that bit high, and does another comparison. The sequence continues all the way down to the LSB. Once this is done, the conversion is complete and the N-bit digital word is available in the register.

# Schematic
![circuit](https://user-images.githubusercontent.com/65559674/194708697-1a59d02b-0420-496e-8ce9-78bced5669e6.jpg)

# Verilog Code of SAR Block
# Verilog Code of Control Block
# Waveforms
Vin = 0.9 0 9V
Vin = 1.2 1 2V
Vin = 2.4 2 4V
# Generated NetList
# Result
The Design and simulation of the SAR type ADC is finally done. The ouput has a very small error of around 1% which is quite minimal and in many inputs the output had close 0.1% error. The plots obtained are mathing the excepted waveforms.

# Generation of Digital Block Model using Ngveri Tab
Open eSim
Run NgVeri-Makerchip
Add top level verilog file in Makerchip Tab
Click on NgVeri tab
Add dependency files
Click on Run Verilog to NgSpice Converter
Debug if any errors
Model created successfully
# Steps to Run Simulation of Project
Clone this project using the following command:
To run the project in eSim:
Run eSim
Load the project
Open eeSchema
Simulate using ngSpice
# Reference
Design with operational amplifiers and analog integrated circuits / Sergio Franco, San Francisco State University. – Fourth edition.
A. Sinha and S. K. Sen, "Design of an improved successive approximation type ADC using multi bit per cycle algorithm for conversion rate improvement.", 2014.
# Author
Ravi Prakash Vishwakarma, Electronics and Communication Engineering Department, B.Tech Final Year, Madan Mohan Malaviya University of Technology, Gorakhour, U.P.
