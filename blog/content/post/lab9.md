---
title: "Lab 9"
date: 2020-11-09T12:17:33+11:00

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

# Mealy State Diagram

<!-- Use the skeleton code to identify the control unit FSM and produce a Mealy state diagram prior to coding. -->

![](mealy_fsm.png)

# Mux Truth table

<!-- Produce a truth table for the Multiplexers unit prior to coding. -->

> Not sure what the point of this multiplexer table is... since it's a one-hot encoded multiplexer, and there isn't any complicated logic

![](2020-11-09-22-14-36.png)

# Simulation Information

* 0-20ns - Reset held
* 20-40ns - Wait 1 cycle
* 40-60ns - Dry test `mov r1, r4`
* 60-80ns - Dry test `mvi r2, -`
* 80-100ns - Dry test `add r0, r7`
* 100-120ns - Dry test `sub r7, r0`
* 120-160ns - Reset. Wait 1 cycle
* 160-180ns - Load `mvi r6, 29`. Run T0 -> T1
* 180-200ns - Fill in `29`. Done
* 200-220ns - Load `mvi r3, 15`. Run T0 -> T1
* 220-240ns - Fill in `15`. Done
* 240-260ns - Load `mov r7, r6`. Run T0 -> T1
* 260-280ns - Done.
* 280-300ns - Load `add r7, r3`. Run T0 -> T1
* 300-320ns - T1 -> T2. A should contain `29`
* 320-340ns - T2 -> T3. G should contain `44`
* 340-360ns - Done. `r7` should contain `44`
* 360-380ns - Load `mov r2, r6`. Run T0 -> T1
* 380-400ns - Done.
* 400-420ns - Load `sub r2, r3`. Run T0 -> T1
* 420-440ns - T1 -> T2. A should contain `29`
* 440-460ns - T2 -> T3. G should contain `15`
* 460-480ns - Done. `r2` should contain `14`

## Expected Final Register State

|$R_0$|$R_1$|$R_2$|$R_3$|$R_4$|$R_5$|$R_6$|$R_7$|
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
|0|0|14|15|0|0|29|44|

## Simulated State

![](2020-11-09-22-04-43.png)

(Yay!)
