---
title: "Synchronous Circuits"
date: 2020-10-28T20:59:52+11:00

hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

Sequential Circuits

* Outputs depend on past inputs and states, as well as present inputs
* Sequential circuits which use clock signals are known as synchronous sequential circuits

# Synchronous Sequential Circuits

* Also known as _finite state machines_

![](2020-10-28-21-37-37.png)

* `W` - input
* `Q` - present state

A circuit is said to be a **Moore type circuit** if the output state **only** depends on the current state `Q`

A circuit is said to be a **Mealy type circuit** if the output state depends on the current state `Q`, and the input `W` - Uses less states!

Note: Transitions only occur on the **NEXT** clock edge cycle

## Design

* The first step is to determine the number of states in a system
  * Assume we start on a reset state
  * Find the possible next states
    * Find the possible next states
      * ...
* Create state diagram
* Create state table
* Create state assignment table
* Derive state logic expression

## State Diagram 

![](2020-10-28-21-58-40.png)

* Transitions of a Moore type circuit are labelled with the state condition
* Transitions of a Mealy type circuit are labelled with both the state condition and input value

## State Table

![](2020-10-28-22-01-54.png)

## State Assignment

States can be implemented through **variables** (flip-flops)

![](2020-10-28-22-04-57.png)

A Karnaugh map can be used to map states from a state-assigned table

---

# CAD tooling for FSMs

* Enumerated type - `TYPE State_type IS (A, B, C);`
* Define a signal of state type, `SIGNAL y: State_type;`
* Use a process (sensitive to clock) that switches on `y` with `CASE`

## A more common way

* Create two signals `y_present` and `y_next`
* Use a process (sensitive to clock, and executes on clock edge) that sets `y_present <= y_next;`
* `z <= '1' WHEN y_present = C ELSE '0'`

## Aside: Overriding state values

```vhdl
ATTRIBUTE ENUM_ENCODING: STRING;
ATTRIBUTE ENUM_ENCODING of State_type : TYPE is "00 01 11";
```

## Aside: If you don't want to use `ENUM`

* Define each state as a logic vector with a value
* Requires a `WHEN OTHERS =>` clause

---

# Async inputs on a Mealy machine

The output should not be asserted until _after_ the input is asserted for 1 clock period

---

# Register Swapping

Mealy circuit can swap two registers one **clock cycle quicker (3)** opposed to the Moore type circuit (_4 cycles_)

# State Minimisation

> Equivalent - Two states are **equivalent** if they have the same output for every input sequence

* A good state assignment is more important than state minimisation to obtain a low-cost implementation