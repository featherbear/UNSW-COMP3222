---
title: "Applications of Multiplexers"
date: 2020-09-30T14:00:00+11:00

description: "Combinational Building Blocks"
hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

<!-- combinational 
sequential -  -->

# Practical Applications of Muxers

## $n \times k$ crossbar switch

n inputs, k outputs, connect any input to any output

## FPGA

### Pass Transistors

* Transistors that are switched on or off

* disadvantage - corrupted memory can cause 2 transistors to drive the same line
* disadvantage - memory cell requires 6 internal transistors
* scalability issues

### Multiplexers

* Only need $log(n)$ storage cells

# Simplified Logic Functions

![](2020-10-08-16-57-53.png)

![](2020-10-08-16-56-57.png)
