---
title: "VHDL Tricks"
date: 2020-10-09T19:27:21+11:00

categories: ["VHDL"]
hiddenFromHomePage: false
postMetaInFooter: false

flowchartDiagrams:
  enable: false
  options: ""

sequenceDiagrams: 
  enable: false
  options: ""

---

# VHDL Packages

[Read here](../vhdl-packages)

# Entities

## Generics

Entities can have properties which can be set by the implementation during instantiation.

```vhdl
ENTITY regn IS
  
  -- Default: N = 16
  GENERIC ( N : INTEGER := 16 );
  
  PORT (
    D         : IN  STD_LOGIC_VECTOR(N-1 DOWNTO 0);
    RSTn, CLK : IN  STD_LOGIC;
    Q         : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0)
  );
END regn;
```

If an assignment requires the length of a generic, we can use the `OTHERS` keyword as a wildcard. (Refer to [$n$-bit registers](../registers#n-bit-register))

To set these values during instantiation, we use the `GENERIC MAP` declaration.

```vhdl
reg8: regn
  GENERIC MAP ( N => 8 )
  PORT MAP (
    D,
    RSTn,
    CLK, 
    Q
  );
```

## Buffer Ports

Apart from the `IN` and `OUT` modes of a port, a port can also have a `BUFFER` mode - which allows for reading _and_ writing from and to that port. 



# Multiplexing with `SELECT`

Note: Evaluation of all cases is done concurrently

* f <- w0 when S = 0, else w1

```vhdl
WITH s SELECT
  f <= w0 WHEN '0',
       w1 WHEN OTHERS;
```

* 4-to-1 (2bit)

```vhdl
WITH s SELECT
  f <= w0 WHEN "00",
       w1 WHEN "01",
       w2 WHEN OTHERS;
```

# Generation Statements

Shorthand to instantiate multiple components where they only differ by one variable. (i.e. multiple muxers which folow a pattern)

```vhdl
G1: FOR i IN 0 TO 3 GENERATE
  muxes: mux4to1 PORT MAP (
    w(4*i),
    w(4*i + 1),
    w(4*i + 2),
    w(4*i + 3),
    s(1 DOWNTO 0),
    m(1)
  );
END GENERATE;
```

# Conditional Generation with `IF`

![](2020-10-10-01-35-12.png) 

# Conditional Assignment with `WHEN ... ELSE`

```vhdl
f <= w0 WHEN s = '0' ELSE w1;
```

* Can also combine multiple cases
  * Note: They are evaluated sequentially in order (left to right)

```vhdl
f <= w0 WHEN s = '0' ELSE w1 WHEN t = '1' ELSE '1';
```


# Concatenation using `&`

Can define a signal with a length as the sum of two other signal lengths

```vhdl
SIGNAL A : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL B : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);

...
S <= A & B;
```

# Processes

Statements are executed sequentially.

A process listens to a "sensitivity list", and only triggers when a value inside the sensitivity list updates. Only variables that are used in a condition or assignment should appear in a sensitivity list

```vhdl
PROCESS (...) BEGIN
  ...
END PROCESS;
```

* Assignments are committed at the **end** of the process

NOTE: Processes that describe combination logic (circuits without memory) MUST assign a value to every output signal for every execution path

## IF ... THEN ... ELSIF ... THEN ... ELSE ... END IF

`IF` statements can be used inside a `PROCESS`

![](2020-10-10-02-48-36.png)

## CASE

![](2020-10-10-03-31-24.png)

## FOR ... LOOP

```vhdl
someLabel: FOR i IN 0 to N-2 LOOP
  Q(i) <= Q(i+1);
END LOOP;
```

## WAIT UNTIL

Makes the process _always_ run, but only continues when a condition is true

```vhdl
PROCESS BEGIN
  WAIT UNTIL CLK'event AND CLK = '1';
  Q <= D;
END PROCESS;
```

---

# Operators

![](2020-10-10-03-40-00.png)