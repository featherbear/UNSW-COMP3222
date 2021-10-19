---
title: "Registers"
date: 2020-10-10T17:35:02+11:00

categories: ["Memory Circuits", "VHDL"]
hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

# Registers

A register is a collection of flip-flop circuits.

## 8-bit register

![](2020-10-10-17-36-10.png)

## $n$-bit register

![](2020-10-10-17-37-49.png)

# Shift Registers

> Shifts the data

## Bit-wise

![](2020-10-10-17-45-48.png)

Each clock cycle, the flip-flop takes the previous flip-flop's output.  

![](2020-10-10-17-46-39.png)

## Parallel-access

Allows us to load either serially (shifting), or in parallel

![](2020-10-10-17-50-30.png)

<details><summary>VHDL</summary>

![](2020-10-10-17-51-49.png)

</details>

**VHDL - Synchronous**

|Form 1|Form 2|
|:---:|:---:|
|![](2020-10-10-18-04-03.png)|![](2020-10-10-18-04-24.png)|

Reminder: The order doesn't matter as a process only assigns variables at the **end** of the process.