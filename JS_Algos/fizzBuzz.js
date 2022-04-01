// Write a program that takes an input and prints the numbers from one to that input.
// For multiples of 3 print Fizz instead of the number and for multiples of 5 print Buzz.
// For multiples of both 3 and 5 print FizzBuzz.

const readlineSync = require('readline-sync')

const fizzBuzz = () => {
    const n = parseInt(readlineSync.question("Input a number greater than 1: "))
    for (i = 1; i <= n; i++) {
        if (i % 15 === 0) {
            console.log("FizzBuzz")
        } else if (i % 5 === 0) {
            console.log("Buzz")
        } else if (i % 3 === 0) {
            console.log("Fizz")
        } else {
            console.log(i)
        }
    }
}

fizzBuzz()
