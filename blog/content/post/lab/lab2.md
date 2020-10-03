---
title: "Lab 2"
date: 2020-09-30T00:08:43+10:00

categories: ["Labs"]
hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

# Part 1

## Truth Table

![](2020-09-30-00-09-09.png)

## Karnaugh Maps

|$H_0$|$H_1$|$H_2$|$H_3$|
|:---:|:---:|:---:|:---:|
|![](2020-09-30-01-26-41.png)|![](2020-09-30-01-26-47.png)|![](2020-09-30-01-26-54.png)|![](2020-09-30-01-26-58.png)

|$H_4$|$H_5$|$H_6$|
|:---:|:---:|:---:|
|![](2020-09-30-01-27-03.png)|![](2020-09-30-01-27-06.png)|![](2020-09-30-01-28-01.png)|

# Part 2

![](2020-10-03-17-46-28.png)

---

|Truth Table|Annotations|
|:---:|:---:|
|![](2020-09-30-01-54-59.png)|![](2020-09-30-02-13-02.png)|

## Circuit A Truth Table

![](2020-09-30-02-20-24.png)

## Circuit A Karnaugh Map

|$A_2$|$A_1$|$A_0$|
|:---:|:---:|:---:|
|![](2020-09-30-02-29-50.png)|![](2020-09-30-02-30-09.png)|![](2020-09-30-02-30-14.png)|

## Logic Function for $z$

$z = 1$ when $V \ge 10$  
i.e. $V = <1X1X>$ or $V = <11XX>$  

$z = V_3 \cdot (V_2 + V_1)$

## Waveform Verification

![](2020-10-03-18-16-13.png)

## Circuit B Design

The design for circuit B is trivial.

* When input `z` is `0`, circuit B should display a `0` on the display
  * All values are `0` except for _segment 6_
* When input `z` is `1`, circuit B should display a `1` on the display
  * All values are `1` except for _segment 1_ and _segment 2_

This can be translated to the following VHDL code, where `0` indicates an illuminated segment

```vhdl
HEX1(0) <= z;
HEX1(1) <= '0'; -- Boolean: z AND NOT(z);
HEX1(2) <= '0'; -- Boolean: z AND NOT(z);
HEX1(3) <= z;
HEX1(4) <= z;
HEX1(5) <= z;
HEX1(6) <= '1'; -- Boolean: z OR NOT(z);
```