---
title: "Lab 11"
date: 2020-11-19T22:04:52+11:00

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


## Block Diagram (Provided)

![](2020-11-21-22-05-32.png)

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

* A right-shift register **has not been implemented** in the design as it is not required. Right-shifting a 9-bit value has the effect of keeping only the 8 most significant bits. As such, the 8 MSb are wired to the output of the "right-adder"
  
* There is a higher number of components implemented in the design (i.e dedicated incrementor and decrementeo, comparator), trading component cost for a reduced gate delay. As such, several processes can be performed in parallel.

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

![](part2-timing.png)

i.e. Searching for the value `30`.  

For a fixed-size of 32 items, the first address will be `(0 + 31) / 2 = 15`.  
In our case `memory[15] = 50` - however this takes 2 clock cycles to retrieve.

At `S3` (orange), `mem_data > input`, so we now want to check `(0 + 14) / 2 = 7` by entering state `S2` again.  

After two clock cycles, at the next `S3` (blue), `mem_data = input = 30`, so `found` is asserted, and state `S4` is entered

<!-- ### Wave JSON

```json
{
  signal: [
    {name: 'clk', wave: 'p........|'},
    {name: 's', wave: '0.1......|'},
    {name: 'state', wave: '=.4445557|', data: ['S1', 'S2', 'S2_2', 'S3', 'S2', 'S2_2', 'S3', 'S4']},
    {name: 'found', wave: '0......1.|'},
    {name: 'done', wave: '0.......1|'},
    {name: 'input', wave: '=........|', data: [30]},
    {name: 'mem_addr', wave: 'x.4..5...|', data: [15, 7]},
    {name: 'mem_data', wave: 'xxx.4..5.|', data: [50, 30]}
  ]
}
``` -->

## Solution Simulation

![](part2-vwf.png)
