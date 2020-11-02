---
title: "Lab 7"
date: 2020-11-02T21:45:08+11:00

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

![](2020-11-02-23-54-32.png)

## `D`-value evaluations

For most D-latches, their input value is given by an `AND` combination of the input clock `W` and the current state. As the states are encoded with a one-hot encoding, only the corresponding previous state register needs to be compared.

An exception to this is `D1` and `D5` as most states revert to these states.  
A trigger of `W` does not change the state of `D4` and `D8`, rather it stays in the same state

* `D(0) <= nReset;`
* `D(1) <= NOT(W) AND (Q(0) OR Q(5) OR Q(6) OR Q(7) OR Q(8));`
* `D(2) <= NOT(W) AND Q(1);`
* `D(3) <= NOT(W) AND Q(2);`
* `D(4) <= NOT(W) AND (Q(3) OR Q(4));`
* `D(5) <= W AND (Q(0) OR Q(1) OR Q(2) OR Q(3) OR Q(4));`
* `D(6) <= W AND Q(5);`
* `D(7) <= W AND Q(6);`
* `D(8) <= W AND (Q(7) OR Q(8));`
* `Z <= Q(4) OR Q(8);`

# Part 2

## RTL

![](part2_rtl.png)

## State Diagram
![](part2_state.png)


|User-Encoded|One-Hot Encoding|
|:----------:|:--------------:|
|![](part2_user-enc.png)|![](part2_one-hot.png)|

The one-hot encoded resultant table is identical to _Table 2_, and was created via the synthesis tools in Quartus, rather than having to implement the table manually.

Compared to the user-encoded table, there are more hardware resources required as a result of each flip-flip being used for only one purpose


# Part 4

![](2020-11-02-23-57-16.png)

![](2020-11-02-23-58-08.png)