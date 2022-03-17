# Assembly-Language
This is a project consisting of Assembly Language x86-64 using Ubuntu
## Table of Contents
* [print_stars_based_on_height](#print_stars_based_on_height)
* [fancy_printout](#fancy_printout)
* [duplicate finder](#duplicate finder)

## print_stars_based_on_height
This file uses places and Asterik in a 'db' register, and uses that
register to print stars based on the height set by the r13 register.
```
EX: r13 register set to 5 prints out
    *
    **
    ***
    ****
    *****
```
## fancy_printout
This uses c-style strings to print 'Hello World' diagonally using
nested loops.
```
EX: 
    h
     e
      l
       l
        o
         
          w
           o
            r
             l
              d
```
## duplicate finder
This file uses 2 'dq' 64-bit variables containing a string of numbers
labed 'a' and 'b'. If the string of numbers are a duplicates, display 1.
Else display 0 for not duplicates
