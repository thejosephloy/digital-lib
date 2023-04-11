# Verilog Reference

## Including modules from other files

## Defining constants for a file

## Declaring a module, declaring inputs/outputs, declaring parameters

## Verilog operators

## Behaviour Modeling

### initial

### always

### begin-end

### fork-join

### case and casex 

### conditonal statements

### looping statements

## Test benches

<ol>
  <li> Create a test bench file
  <li> Create module for test
  <li> Instantiate DUT (device under testing)
  <li> declare inputs as regs, outputs as wires
  <li> Set up monitor/display for parameters of interest
  <li> Set up initial conditions and clock (if necessary)
  <li> Perform robust, comprehensive testing by checking correctness of all possible inputs (or a random sample of inputs if number of inputs is very large)
</ol>

## Compiling verilog using iverilog and gtkwave
Compiling a verilog file and its testbench, running the executable, and displaying the waveform
```
iverilog executableName module.v module_tb.v
vvp executable
gtkwave fileName.vcd
```

The following lines must be included in the testbench file (typically in an initial-begin block) 
```
$dumnpfile("fileName.vcd")
$dumpvars(0, fileName)
```
