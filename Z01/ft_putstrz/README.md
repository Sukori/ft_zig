# ft_putstrz
This program takes a sting as input and prints it character by character.

## Observations
The notation `str.*` seems to be an equivalent for `*str`. But since a string is a "slice of bytes", I must treat them as arrays and use `str[i]` to access the string character by character. The notation `ptr.*` is used for single element pointers, such as `int` or `char`.

I can't rely on a null terminator to loop through a string. Therefore, str.len serves as a medium to find the end boundary. This tells me that creating a `strlen` equivalent is useless unless there is another way to find the last character of a string.
