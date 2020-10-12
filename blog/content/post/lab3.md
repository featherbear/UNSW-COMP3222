---
title: "Lab 3"
date: 2020-10-10T15:21:07+11:00

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
<!-- 
# Part 1

![](2020-10-10-15-21-38.png)

# Part 2

-

# Part 3

-

# Part 4

- -->

# Part 5


## Design Overview

* This design implements two `8-bit flip-flop registers` that each maintain an 8-bit value
* `SW9` is a mode select that selects which 8-bit flip-flop is controlled by the `SW7` - `SW0` input switches
* An `8-bit 2-mux` is implemented inline for each flip-flop register, which selects either the input switches, or the flip-flop output as a loopback
* The output of each flip-flop is
  * 8-bit loopback into the mux
  * 4 MSB - `4-bit HEX decoder`
  * 4 LSB - `4-bit HEX decoder`
* The flip-flop updates when `CLK` / `KEY1` is LOW
* The `RESET` / `KEY0` signal asynchronously resets _both_ flip-flops


## Schematic

![](part5-diagram_coloured.png)

<details><summary>Black and White Schematic</summary>

![](part5-diagram.png) 

</details>