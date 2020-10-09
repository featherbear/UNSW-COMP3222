---
title: "Decoders and Encoders"
date: 2020-10-09T19:20:45+11:00

description: "Combinational Building Blocks"
hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---


# Decoders and Encoders

## Decoders

Circuits used to decode an $n$-input signal into $2^n$ outputs

* A **'one-hot encoded'** decoder is a decoder which only sets one output to 1 at a time

## 2-to-4 binary decoder

`2i4o`

![](2020-10-09-19-21-13.png)

## Demultiplexers

A decoder can also be used as a `1-to-2^n` demuxer.  

![](2020-10-09-19-28-18.png)

This is used in TDM (time division multiplexing) circuits, which allow a single input to transfer data

# Encoders

Encodes $2^n$ inputs into an $n-bit$ code

![](2020-10-09-19-35-46.png)

## Priority Encoders

The higher the priority, the higher the input pin.  

![](2020-10-09-19-38-21.png)  

Uses an additional wire `z` to indicate whether an input is received

* Intermediate Signals

![](2020-10-09-19-38-50.png)

* Output

![](2020-10-09-19-38-56.png)
