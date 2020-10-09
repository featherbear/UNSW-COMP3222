---
title: "Introduction to VHDL"
date: 2020-09-16T15:44:38+10:00

categories: ["VHDL"]
hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

Originally circuit diagrams were used to describe the implementation of the circuit. However as more and more components are added - it becomes hard to maintain and add.

**Hardware Description Languages (HDLs)** serve as a way to literally describe the circuit (rather than what is executed on a processor)

* VHDL - Very-High-Speed-Integrated-Circuit HDL
* Verilog

<!-- 
* FPGA -> Mapping the circuit to lookup tables
* ASIC -> Mapping the circuit to NAND and NOR gates
-->


---

# VHDL

![](2020-09-16-15-50-34.png)

**Note: Syntax is case-insensitive**

## Entity Declaration

A VHDL entity declaration describes the interface of the circuit.

```vhdl
ENTITY example IS
  PORT (
    x1, x2, x2 : IN BIT;
    f          : OUT BIT
  );
END example;
```

## Architecture

The architecture of a VHDL design unit describes the behaviour/structure of the circuit.

```vhdl
ARCHITECTURE LogicFunc OF example IS
BEGIN
  f <= (x1 AND x2) OR (NOT x2 AND x3);
END LogicFunc;
```

* Simple signal assignment statements are examples of **concurrent assignment statements** - as they are all evaluated at the same time.
  * The order therefore does not matter

---

![](2020-09-16-15-55-48.png)

---

# STD_LOGIC

The `std_logic` package defines legal values

* 0
* 1
* Z - High Impedance
* \- - Don't care
* U - Uninitialised
* X - Unknown
* W - Weak
* L - Weak tending to 0
* H - Weak tending to H

To use the library, we need to include the following two lines in the code

```
LIBRARY ieee;
USE ieee.std_logic_1164.all;
```
