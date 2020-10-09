---
title: "Intro to FPGA"
date: 2020-09-18T14:20:09+10:00

categories: ["FPGA"]
hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---


There are fixed and programmable FPGA devices.

* VSLI (Very Large Scale Integration) 

---

![](2020-09-18-14-22-54.png)

# Lookup Tables (LUTs)

In an FPGA logic cell/block, there is an n-input LUT that serves as a $2^n$ address memory

> The DE1 and DE0 boards use 4-input LUTs

# Multiplexers (Muxes)

![](2020-09-18-14-24-00.png)

Multiplexers allow the routing of inputs to an output to be controlled by a signal

