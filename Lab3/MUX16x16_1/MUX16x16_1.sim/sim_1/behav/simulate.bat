@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xsim sim_MUX16x16_1_behav -key {Behavioral:sim_1:Functional:sim_MUX16x16_1} -tclbatch sim_MUX16x16_1.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
