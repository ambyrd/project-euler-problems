/*
Problem 1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
*/

import std.stdio;


int sum_multiples(int max) {
    int sum = 0;
    for(int n = 0; n < max; n++) {
        if(n % 3 == 0 || n % 5 == 0) {
            sum += n;
        }
    }
    return sum;
}

unittest {
    // Example from problem description
    assert(sum_multiples(10) == 23);
    // Base cases (less than 3)--should return 0
    assert(sum_multiples(2) == 0);
    assert(sum_multiples(1) == 0);
}

void main() {
    int max = 1000;
    int sum = sum_multiples(max);
    writefln("Sum of multiples of 3 or 5 below %s: %s", max, sum);
}
