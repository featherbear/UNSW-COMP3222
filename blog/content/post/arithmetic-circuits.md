---
title: "Arithmetic Circuits"
date: 2020-09-23T14:54:26+10:00

hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

# Binary Addition

## Half-Adder Circuit

![](2020-09-23-14-57-13.png)

![](2020-09-23-14-57-30.png)

## Full-Adder Circuit

### Truth Table

![](2020-09-23-15-07-32.png)

### $s_i$ Karnaugh Map

![](2020-09-23-15-07-41.png)

### $c_{i+1}$ Karnaugh Map

![](2020-09-23-15-07-09.png)

### Circuit

![](2020-09-23-15-08-53.png)

### Symbol

![](2020-09-23-15-08-23.png)

### Decomposition

![](2020-09-23-15-09-41.png)

![](2020-09-23-15-09-50.png)

### Example n-bit Ripply-Carry Adder

![](2020-09-23-15-11-47.png)

# Subtraction

Subtraction is the addition of the two's complement

# Adder/Subtractors using a Control Bit

* Using a XOR gate - can flip 0s to 1s
* A $\overline{Add}/Sub$ control signal also deals with the two's complement

![](2020-09-23-15-55-21.png)
