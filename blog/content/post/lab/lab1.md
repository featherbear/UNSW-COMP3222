---
title: "Lab 1"
date: 2020-09-21T18:12:48+10:00

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

# Part 4

**Truth Table**

|$c_1$|$c_0$|Note|$s_0$|$s_1$|$s_2$|$s_3$|$s_4$|$s_5$|$s_6$|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|**0**|**0**|_d_|1|0|0|0|0|1|0|
|**0**|**1**|_E_|0|1|1|0|0|0|0|
|**1**|**0**|_1_|1|0|0|1|1|1|1|
|**1**|**1**||1|1|1|1|1|1|1|

---

## Karnaugh Maps

<div id="aaa">

### $s_0$

|$c_1$\\$c_0$|0|1|
|:---|:---:|:---:|
|**0**|1|0|
|**1**|1|1|

### $s_1$

|$c_1$\\$c_0$|0|1|
|:---|:---:|:---:|
|**0**|0|1|
|**1**|0|1|

### $s_2$

|$c_1$\\$c_0$|0|1|
|:---|:---:|:---:|
|**0**|0|1|
|**1**|0|1|

### $s_3$

|$c_1$\\$c_0$|0|1|
|:---|:---:|:---:|
|**0**|0|0|
|**1**|1|1|

### $s_4$

|$c_1$\\$c_0$|0|1|
|:---|:---:|:---:|
|**0**|0|0|
|**1**|1|1|

### $s_5$

|$c_1$\\$c_0$|0|1|
|:---|:---:|:---:|
|**0**|1|0|
|**1**|1|1|

### $s_6$

|$c_1$\\$c_0$|0|1|
|:---|:---:|:---:|
|**0**|0|0|
|**1**|1|1|

</div>

## Expressions

$s_0 = c_1 + \overline{c_0} $  
$s_1 = c_0 $  
$s_2 = c_0 $  
$s_3 = c_1 $  
$s_4 = c_1 $  
$s_5 = c_1 + \overline{c_0}$  
$s_6 = c_1 $  

# Part 5

## Block Diagram

A high-level block diagram is created as below.  

Note: The implementation of the two-bit 3-to-1 muxer is two cascaded two-bit 2-to-1 muxers

### Simple

![](part5_diagram_bw.png)

### Coloured

![](part5_diagram_colour.png)