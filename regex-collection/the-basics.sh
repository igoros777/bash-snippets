# The basics
.           Match any single character
^           Match the empty string at the beginning of a line
$           Match the empty string at the end of a line
A           Match an upper-case letter A
a           Match a lower-case letter a
\d          Match any single digit
\D          Match any single non-digit
\w          Match any single alphanumeric character
[A-E]       Match any upper-case A, B, C, D, or E
[^A-E]      Match any character except upper-case A, B, C, D, or E
X?          Match no or upper-case letter X
X*          Match zero or more capital X
X+          Match one or more capital X
X{n}        Match n occurences of capital X
X{n,m}      Match at least n but no more than m occurences of capital X
(abc|def)+  Match one or more occurences of abc and/or def sub-strings
