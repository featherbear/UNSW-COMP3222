---
title: "Karnaugh Maps"
date: 2020-09-18T14:45:19+10:00

hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

A diagrammatic way to simplify functions by eliminating terms.

* The columns are set as the most significant variables
* The rows are set as the least significant variable

This creates a layout such that adjacent cell values only differ by one bit - This helps us identify common terms which can be taken out - "grey encoding"

The left-most and right-most columns are also considered to be adjacent - "torus"

* Find columns/rows which share a 1 bit
  * Can extract that 'same' variable

---

<details><summary>two-variable</summary>

![](2020-09-18-14-51-01.png)

</details>  
<details><summary>three-variable</summary>

![](2020-09-18-14-54-31.png)

</details>

<details><summary>four-variable</summary>

![](2020-09-18-15-03-13.png)

</details>

---

# Minimisation Strategies

## Terminology

* Implicant - A product term that indicates a set of valuations that give a function result of 1

* Prime Implicant - Cannot be combined into another implicant that has fewer literals
  * Expanded by square/rectangular powers of 2 to for prime implicants

* Cover - collection of implicants that account for all valuations
  * A cover consisting of only prime implicants will lead to a minimal cost implementation

* Cost - #gates + #inputs
  * **Input inverters are not counted!**

* Essential prime implicant
  * A prime implicant that is not included in any other prime implicant

---

![](2020-09-18-15-27-59.png)

---

# POS minimisation

It may be cheaper to implement a POS (Product of Sums) implementation over a SOP (Sum of Products) implementation.

![](2020-09-18-15-29-20.png)

A: SOP (6) vs POS (9)

![](2020-09-18-15-35-46.png)

POS (15)

---

# Incomplete Functions

Often functions are not completely specified, we can treat these input conditions as "don't care", allowing them to be used as 0s or 1s.

# Multiple-output Synthesis

If there are several similar function circuits, we may be able to reuse components to serve several functions.

![](2020-09-18-15-41-56.png)

# Input Refactoring

Gates have a (physical) limit to the number of inputs they can have. It may be necessary to refactor the layout by having several layers of lesser-input gates.

* Decreases the complexity of each gate
* Increases the number of gates
* As gates are physical, there is an electrical delay
  * Chaining gates adds more propagation delay

## Example: 7-input AND

![](2020-09-18-15-44-59.png)

