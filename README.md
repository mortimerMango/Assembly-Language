# Assembly-Language 

#### Projects consisting of Assembly Language x86-64 with Ubuntu

<img src="https://github.com/devicons/devicon/blob/master/icons/ubuntu/ubuntu-plain-wordmark.svg" title="ubuntu" alt="ubuntu" width"40" height="40"/>

## Table of Contents
* [print_stars_based_on_height](#print-stars-based-on-height)
* [fancy_printout](#fancy-printout)
* [duplicate_finder](#duplicate-finder)

### print_stars_based_on_height
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
### fancy_printout
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
### duplicate_finder
This file uses 2 'dq' 64-bit variables containing a string of numbers
labed 'a' and 'b'. If the string of numbers are a duplicates, display 1.
Else display 0 for not duplicates
