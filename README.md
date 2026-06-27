# Pyramid Pattern Printing in Verilog ⭐
 
A simple Verilog testbench that prints a star (`*`) pyramid pattern to the simulation console using nested `for` loops — a fun way to practice procedural logic and loop control in HDL.
 
## 📤 Pattern Output
 
```
    *
   ***
  *****
 *******
*********
```
 
(matches the simulation log shown above, where each row centers an increasing number of stars)
 
## 🧠 Logic Explanation
 
For a pyramid of `n` rows, row `i` (starting at `i = 1`) needs:
 
| Step | Rule | Why |
|------|------|-----|
| **Leading spaces** | `n - i` spaces | Centers the stars — fewer spaces as rows get wider |
| **Stars** | `2*i - 1` stars | Each row has an odd number of stars: 1, 3, 5, 7, 9... |
| **New line** | after each row | Moves the pyramid to the next row |
 
Walking through it for `n = 5`:
 
| Row `i` | Spaces (`n-i`) | Stars (`2i-1`) | Output |
|---------|----------------|-----------------|--------|
| 1 | 4 | 1 | `    *` |
| 2 | 3 | 3 | `   ***` |
| 3 | 2 | 5 | `  *****` |
| 4 | 1 | 7 | ` *******` |
| 5 | 0 | 9 | `*********` |
 
This is exactly the same logic you'd use in C or Python — just expressed with Verilog's `initial` block and `$write`/`$display` system tasks instead of `printf` or `print`.
 

 

---
 
*Part of the pattern-printing practice series — recreating classic loop-based patterns (pyramids, triangles, diamonds) in Verilog instead of C/Python.*
