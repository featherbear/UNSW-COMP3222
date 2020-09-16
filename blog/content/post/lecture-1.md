---
title: "Lecture 1"
date: 2020-09-16T14:12:43+10:00

categories: ["Lectures"]
hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

|Name|Expression|Gate|
|:---:|:-------:|:---:|
|Logical AND|$ x_1 \cdot x_2 $|![](https://pxt.azureedge.net/blob/21beeee46f4bf464af0ed4dfe895b7b5670a1b41/static/courses/logic-lab/logic-gates/and-gate.png)|
|Logical OR|$ x_1 + x_2 $|![](https://pxt.azureedge.net/blob/a19b61032bbf27fb26135da3512fa5349f69c6d5/static/courses/logic-lab/logic-gates/or-gate.png)|
|NOT|$ \overline{x} $|![](https://pxt.azureedge.net/blob/f543c51cd05c07fa101886eecadd07a1ddc0052b/static/courses/logic-lab/logic-gates/not-gate.png)|

# Truth Table

> A truth table is a mathematical table used in logic-specifically in connection with Boolean algebra, boolean functions, and propositional calculus-which sets out the functional values of logical expressions on each of their functional arguments, that is, for each combination of values taken by their logical variables.

Describes the outputs for all combinations of given inputs.

![](2020-09-16-14-53-27.png)

<!-- # Timing Diagram -->

# Operation Logic Order

> NOT -> AND -> OR

# Boolean Algebra

![](2020-09-16-14-58-47.png)  
![](2020-09-16-14-59-05.png)

# Synthesis

Hardware synthesis is the process of generating a hardware schematic from a set of inputs

# Circuit Cost

* number of transistors used ~= circuit area
* circuits with fewer gates, and gates with fewer inputs require fewer transistors

> Simplified Cost: `# gates + # gate inputs`

Example

|Network|# Gates|# Inputs|Cost|
|:-----:|:-----:|:------:|:---:|
|![](2020-09-16-15-02-45.png)|6|11|17|
|![](2020-09-16-15-03-57.png)|2|3|4|
