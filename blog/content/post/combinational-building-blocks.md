---
title: "Combinational Building Blocks"
date: 2020-09-30T14:00:00+11:00

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

# Shannon's Expansion Theorem

> Mux implementations of logic functions require that a given function be decomposed with respect to the variables that are used as the select inputs

![](2020-10-08-21-32-24.png)

^ i.e. Split f(w1...) into w1*f(1,...) + w1'*f(0,...)

* Terms without the **cofactor** appear in both complemented and uncomplemented forms

![](2020-10-08-21-43-20.png)  
$\overline{w_1} (w_2 w_3) + w_1 (w_2 w_3) + w_1 (w_2 + w_3)$  
![](2020-10-08-21-43-30.png)

* Cofactors are denoted $f_{\overline{w_1}}$
  * $f = \overline{w_1}f_{\overline{w_1}} + w_1 f_{w_1}$

## Multiple variable implementation

We can expand multiple variables simultaneously, making $2^n$ different terms.

When all variables are expanded, a **canonical sum of products** is formed

![](2020-10-09-00-24-35.png)
