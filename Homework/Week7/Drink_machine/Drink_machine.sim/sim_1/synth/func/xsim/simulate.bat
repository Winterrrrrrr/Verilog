@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Thu Oct 20 19:43:48 +0800 2022
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim Drink_machine_tb_func_synth -key {Post-Synthesis:sim_1:Functional:Drink_machine_tb} -tclbatch Drink_machine_tb.tcl -view C:/Users/Winter/Desktop/vivado/Homework/Week7/Drink_machine/Drink_machine_tb_behav.wcfg -log simulate.log"
call xsim  Drink_machine_tb_func_synth -key {Post-Synthesis:sim_1:Functional:Drink_machine_tb} -tclbatch Drink_machine_tb.tcl -view C:/Users/Winter/Desktop/vivado/Homework/Week7/Drink_machine/Drink_machine_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
