/**
 * Project Euler Problem 1. Multiples of 3 or 5

 * If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
 * The sum of these multiples is 23.

 * Find the sum of all the multiples of 3 or 5 below 1000.
 */

fun main() = println((1 until 1000).filter { it % 3 == 0 || it % 5 == 0 }.sum()) // 233168