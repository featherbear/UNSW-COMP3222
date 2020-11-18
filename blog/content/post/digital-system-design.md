---
title: "Digital System Design"
date: 2020-11-18T13:33:10+11:00

hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

# Digital System

A digital system comprises of the following

* **datapath** - transforms the data as required by a specification
* **controller** - (control unit, control path) - monitors and controls the datapath signals and controls

# Bus

To connect all of the different devices together, we need a data bus; however we need to manage which devices are reading from, and which single (***important***) devices are writing to a bus - else we will have value corruption.

## Output Selection

As all devices will have a continuous output, a multiplexer can be used to determine which device output is routed into the bus

![](2020-11-18-14-39-19.png)

A [tristate buffer](../three-state-tristate-buffer) (hence using one-hot encoding) could also be used

# ASM - Algorithmic State Machines

ASMs represent state transitions and generated outputs that may be difficult to represent as state diagrams and state tables.

|Named State Box|Decision Box|Conditional Output Box|
|:---:|:---:|:---:|
|![](2020-11-18-14-42-31.png)|![](2020-11-18-14-42-51.png)|![](2020-11-18-14-42-58.png)|

![](Snipaste_2020-11-09_01-50-07.png)  

![](Snipaste_2020-11-09_01-50-10.png)  

![](Snipaste_2020-11-09_01-53-48.png)  

