---
title: "Counters"
date: 2020-10-10T18:26:45+11:00

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

# Counters

Counters operate by taking the output of a flip-flop as its clock input

|Circuit|Table|
|:---:|:---:|
|![](2020-10-10-18-28-11.png)|![](2020-10-10-18-28-17.png)|

![](2020-10-10-18-27-58.png)

Note: As a result of propagation delay, there is some time rippling that occurs. This causes some glitching (between count 3 and 4 there are four different values).

**Solution**

* Use the same clock signal for all circuits
* Only trigger the flip-flop when pre-requisites are met (i.e. 0b011 become 0b100)
  * i.e. AND gate the input with previous conditions

![](2020-10-10-18-36-51.png)

Note: Clock time >= Critical Path

Critical Path: Propagation delay ($t_{cQ}$) + delay(AND gates) + $t_{su}$

## Asynchronous Enable and Clear

![](2020-10-10-18-38-41.png)

## Synchronous Enable

![](2020-10-10-18-39-50.png)

## Behaviourial Code

![](2020-10-10-18-44-08.png)

---

# Starting the counter from any value

Parallel loading with an input signal, and load flag

|Circuit|Similar Code|
|:-----:|:---:|
|![](2020-10-10-18-45-32.png)|![](2020-10-10-18-45-58.png)|

**Note: Code doesn't include the load flag**

---

# Modulo Counter

For counters that do not use the max range of values ($2^n$) of an $n$-bit signal, we can use a loading circuit that gets triggered on a certain state

![](2020-10-10-18-48-19.png)

**i.e Modulo 6 Counter**  
When Q = 5, perform a load of 0 during the next cycle.

# Two Digit Counter

![](2020-10-10-19-19-40.png)

# Ring Counter

![](2020-10-10-19-20-18.png)

**Alternative**  
![](2020-10-10-19-20-47.png)