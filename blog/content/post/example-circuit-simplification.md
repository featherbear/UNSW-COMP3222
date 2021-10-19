---
title: "Example Circuit Simplification"
date: 2020-09-23T14:42:40+10:00

hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

Deriving the output function

1) Derive in terms of the output function (working backwards from output)  
2) Derive in terms of the input gates (working forwards from inputs)

* May be useful to [rewrite gates](../nand-nor-gates) in terms of their NAND / NOR forms
  * Double bubbles cancel each other out

---

![](2020-09-23-14-43-33.png)


## Derivation from inputs

|||
|:---:|:---:|
|![](2020-09-23-14-43-22.png)|![](2020-09-23-14-45-43.png)|


## Conversion of $P_4$ from NOR to AND(NOT,NOT)

![](usingP4conv.png)
