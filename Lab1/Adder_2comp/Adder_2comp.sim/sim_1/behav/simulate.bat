@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim sim_Adder_2comp_behav -key {Behavioral:sim_1:Functional:sim_Adder_2comp} -tclbatch sim_Adder_2comp.tcl -view C:/Users/Chuong/Documents/Verilog/Adder_2comp/sim_Adder_2comp_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
