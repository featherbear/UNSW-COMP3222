---
title: "Arithmetic Circuits"
date: 2020-09-23T14:54:26+10:00

description: "Carry lookahead"
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

* The speed of a circuit is limited by the longest delay along the paths through a circuit
  * This path is called the 'critical path'
  * The delay is known as the 'critical-path delay'

## Fast Addition - Carry-lookahead addition

$c_{i+1} = x_i y_i + x_i c_i + y_i c_i$ can be rewritten as

$c_{i+1} = g_i + p_i + c_i$ where  

$g_{i} = x_i y_i$ - carry generated when both bits are 1.  
$p_i = x_i + y_i$ - carry propagated when either input bit is 1

This allows us to create a _two-level AND-OR circuit_

![](2020-09-25-14-21-11.png)

Notice that for {i+1}, the result for {i} is not needed!

Each stage can check if a carry has been generated, or if a carry has been propagated

* All carries are produced after 3 gate delays
* All sum bits are computed after 4 gate delays
* BUT each stage gets more and more complex
  * Two more wires used per each stage
  * 1 more AND gate with one more input per state
  * One more input to the OR gate per stage
* It is wise to split a n-bit adder into smaller blocks
  * i.e. Split a 32-bit adder into four 8-bit adders
* Could even do a lookahead of each group
* Using a carry-lookahead adder for 4x8=32bits uses a total of 8 gate delays
  * A 32-bit ripple carry adder needs 64 gate delays

<!-- # Logic Array Block

Array of 10 lookup tables, 4 inputs -->

* Overflow occurs when $ \overline{c_{n-1}} c_{n} + c_{n-1} \overline{c_n} = c_{n-1} \oplus c_n $

![](2020-11-18-14-28-26.png)

![](2020-11-18-14-35-36.png)

Since each bit is known, we can get the G (A*B) and P (A XOR B) values by having those gates for each pair of bits

# VHDL

Arithmetic Operations can be performed in VHDL with the `ieee_std_logic_signed.all` package

---

# Multiplication Circuit

Slides: `08-Design.pdf`

![](2020-11-21-07-50-41.png)

![](2020-11-21-07-52-12.png)

![](2020-11-21-07-51-17.png) 

# Division Circuit

![](2020-11-21-07-55-00.png)

![](2020-11-21-07-55-09.png)

* `Left-shift R || A` - Shift the MSB of A into R

## Enhanced Divisder Circuit

![](2020-11-21-08-23-12.png)

* Combine the Q and A register
* Flip-flop used
* Shift register holds both result and remainder

![](2020-11-21-08-28-51.png)

## Mean of K

![](2020-11-21-08-29-44.png)