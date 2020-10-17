---
title: "Lab 4"
date: 2020-10-17T23:34:59+11:00

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

# Part One

## Section 1

8-bit counter using 8 toggle flip-flop

![](2020-10-17-23-48-13.png)

Total Logic Elements: 11  
$F_{max} = 483.79 MHz$  
$Restricted F_{max} = 380.08 MHz$  

## Section 3

Integrated counter using `SW`, `KEY` and `HEX` components

![](2020-10-17-23-50-59.png)

## Section 5

Functionally, this 4-bit T-flip-flop counter is identical to the one provided in Figure 1

|Design|Figure 1|
|:---:|:---:|
|![](2020-10-17-23-53-21.png)|![](2020-10-17-23-55-34.png)|

# Part Two

16-bit counter using procedural code `Q <= Q + 1`

![](2020-10-18-00-10-37.png)

Total Logic Elements: 16  
$F_{max} = 334.34 MHz$  

|Part One|Part Two|
|:---:|:---:|
|![](2020-10-18-00-12-24.png)|![](2020-10-18-00-11-31.png)|

Regarding the technology maps, substantially many more registers were used in this procedural design than in Part One.

---

![](2020-10-18-00-05-20.png)

When modifying the procedural design model for 8-bits (for a better comparison), the results were as follows:

Total Logic Elements: 8  
$F_{max} = 456.51 MHz$  
$Restricted F_{max} = 380.08 MHz$  

Notably, there are 3 less logic elements in the procedural design than the manually designed model. Despite this, the maximum frequency is actually lower than the other model, likely as a result of the required internal transistors causing propagation delay . Realistically, both will operate at the same rate due to I/O limitations

# Part Three

![](2020-10-18-00-16-58.png)

Total Logic Elements: 8  
$F_{max} = 349.41 MHz$  

# Part Four

Note: `HEX3`, `HEX2`, `HEX1` ignored for insignificance

![](2020-10-18-00-46-26.png)


