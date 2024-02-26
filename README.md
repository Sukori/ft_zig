# ft_zig
My ZIG learning repo following 42 style

## Z00
Introductory chapter of the piscine

### Projects
The goal is to solve the following projects in ZIG in order to master the basic treatment of chars and standard output.

* ft_putcharz
* ft_print_alphabetz
* ft_print_numberz
* ft_is_negativez

### Reflections
I stopped after the is_negative test. The reason is that the write function in C requires the programmer to convert the output into a string to be able to write it to the file descriptor. ZIG gets rid of this complication by using a print function that is already able to manage different data types. Therefore, conversions do not feel that useful, leadeing me to skip the putnbr. I also skipped the others to focus on pointers in Z01.

## Z01
The goal of this chapter is to better understand pointers.

### Projects

* ft_putstrz

## > zig init
As a standard basis, one will use the command `> zig init` to generate all the boilerplate code for a first functional project. I tested the way of manually creating a `main.zig` file in a new project. The first obstacle is that I need a `build.zig` in order to run `> zig build`. This file is out of reach for me at this state, so I copied it from another project and edited the root file to compile. I did not understand the use of `root.zig` yet, but I noticed that it is not critical. My guess is that it is used to perform unit tests instead of bloating `main.zig`, for instance.

Upon compilation, zig generates a lot of cache elements. Do not forget the gitignore, for a better comfort. Apart from that, I do not see any valid reason to not generating the project with `> zig init`.
