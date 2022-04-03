// Given a number N return the value at that index of the fibonacci sequence (1, 1, 2, 3, 5, 8...)
const fibonacciRecursive = (num) => {
    if (num <= 1) {
        return 1
    } else {
        return fibonacciRecursive(num - 1) + fibonacciRecursive(num - 2)
    }
}

console.log(fibonacciRecursive(10))
