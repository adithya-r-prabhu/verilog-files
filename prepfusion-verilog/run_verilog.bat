@echo off
REM Check if the name parameter is provided
if "%~1"=="" (
    echo Usage: %~nx0 ^<name^>
    exit /b 1
)

REM Assign the input parameter to a variable
set NAME=%~1

REM Compile the Verilog files
C:\iverilog\bin\iverilog.exe -g2012 -o "%NAME%_tb.vvp" "%NAME%.sv" "%NAME%_tb.sv"
if %errorlevel% neq 0 (
    echo Compilation failed.
    exit /b 1
)

REM Run the simulation
C:\iverilog\bin\vvp.exe "%NAME%_tb.vvp"
if %errorlevel% neq 0 (
    echo Simulation failed.
    exit /b 1
)

REM Open the resulting VCD file in GTKWave if it exists
if exist "dump.vcd" (
    start "" "gtkwave" "dump.vcd"
) else (
    echo "dump.vcd" not found. Ensure your testbench generates the waveform.
)
