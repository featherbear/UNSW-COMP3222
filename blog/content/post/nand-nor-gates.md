---
title: "NAND and NOR Gates"
date: 2020-09-23T14:08:54+10:00

hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

<!-- An AND gate is actually a combination of a NAND and NOT gate -->

NAND and NOR gates are preferred over AND/OR/NOT gates as they require less _transistors_ to implement

|Gate|# Transistors|
|:---:|:----------:|
|NOR|4|
|NAND|4|
|NOT|2|
|AND|6 (NAND + NOT)|
|OR|6 (NOR + NOT)|

![](2020-09-23-14-12-36.png)

![](2020-09-23-14-12-42.png)

---

# NAND conversion (SOP network)

|Step 1|Step 2|Step 3|
|:----:|:----:|:----:|
|![](2020-09-23-14-13-16.png)|![](2020-09-23-14-13-27.png)|![](2020-09-23-14-13-40.png)|

1) Replace AND & OR gates with equivalent NAND gates  
2) Ensure the logical value of no wire is changed due to step  
3) Insert additional bubbles into wires where only one bubble was added during step 1.

- Add bubbles to the outputs of every AND gate
- Add bubbles to the inputs of every OR gate
- Replace OR gates with bubbled inputs to NAND

# NOR conversion (POS network)

|Step 1|Step 2|Step 3|
|:----:|:----:|:----:|
|![](2020-09-23-14-16-07.png)|![](2020-09-23-14-16-31.png)|![](2020-09-23-14-16-44.png)|

1) Replace AND & OR gates with equivalent NOR gates  
2) Ensure the logical value of no wire is changed due to step  
3) Insert additional bubbles into wires where only one bubble was added during step 1.

- Add bubbles to the outputs of every OR gate
- Add bubbles to the inputs of every AND gate
- Equalise bubbles
- Replace AND gates with bubbled inputs to NOR

---

<details>
<summary>Example 2.3</summary>

![](2020-09-23-14-17-54.png)

![](2020-09-23-14-18-14.png)

</details>

<details>
<summary>Example 2.3</summary>

![](2020-09-23-14-27-21.png)

![](2020-09-23-14-27-33.png)

</details>





