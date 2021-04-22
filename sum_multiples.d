/*
Problem 1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
*/

import std.stdio;

void main() {
    int max = 1000;
    int sum = 0;
    for(int n = 0; n < max; n++) {
        if(n % 3 == 0 || n % 5 == 0) {
            sum += n;
        }
    }

    writefln("Sum of multiples of 3 or 5 below %s: %s", max, sum);
}
