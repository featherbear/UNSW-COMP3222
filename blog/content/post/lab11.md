---
title: "Lab 11"
date: 2020-11-21T22:04:52+11:00

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

# Part 2
<!-- 
## Block Diagram (Provided)

![](2020-11-21-22-05-32.png) -->

## Binary Search Pseudocode

For a fixed size array `n = 32`, with data elements at indices (`0-31`)...  
To find value `x`

### Basic

```
DEASSERT found
DEASSERT done

SET LO=0
SET HI=31
LOOP
  IF LO > HI
    ASSERT done
    STOP LOOP
  SET mid = (HI + LO) / 2
  IF array[mid] = x
    ASSERT found
    ASSERT done
    STOP LOOP
  ELSE IF array[mid] > x
    SET LO = mid + 1
  ELSE
    SET HI = mid - 1

```

### Parallel Operation

```
DEASSERT found
DEASSERT done

SET LO=0
SET HI=31

LOOP
  IF LO > HI          SET mid = (HI + LO) / 2
    ASSERT done
    STOP LOOP

  SET val = array[mid] - x

  IF val = 0          IF val is POS
    ASSERT found        LO = mid + 1
    ASSERT done       ELSE # if negative
    STOP LOOP           HI = mid - 1
```

---

## Design Notes

* A right-shift register **has not been implemented** in the design as it is not required. Right-shifting a 9-bit value has the effect of keeping only the 8 most significant bits. As the right-shift register is solely connected to the MID register, this right shift implementation can be done purely hardware based - by connecting internal output wires `ADDER:8-1` to input `7-0:MID`
  
* There is a higher number of components implemented in the design, trading component cost for a reduced gate delay. As such, several operations can be calculated much faster, as they can occur in parallel

* Adders/Incrementors and Subtractors/Decrementors have been implemented asynchronously as there should be sufficient time during clock cycles for arithmetic operations to be completed

* To account for the 2-clock cycle memory load, state `S2` is divided into two stages, `S2` and `S2_2`

## States

|STATE|Description|
|:---:|:----------|
|`S1`|Initial state - wait for start signal|
|`S2`|Load memory (1 of 2)|
|`S2_2`|Load memory (2 of 2)|
|`S3`|Check state|
|`S4`|Finished state|

## Algorithm State Machine

![](part2-asm.png)

## Data Path Diagram

![](part2-datapath.png)

## Refined Algorithm State Machine

![](part2-asm_refined.png)

## Timing Diagram

## Solution Simulation

![](part2-vwf.png)
