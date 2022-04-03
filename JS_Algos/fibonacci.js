// Print the fibonacci sequence given two starting numbers and a length for the sequence

const fibonacci = (first, second, length) => {
    if (length >= 1) {
        let sequence = [first, second]
        for (i = 2; i < length; i++) {
            sequence.push(sequence[i-2] + sequence[i-1])
        }
        return sequence
    } else {
        return 1
    }
}

console.log(fibonacci(0, 1, 10))

// Given a number N return the value at that index of the fibonacci sequence (1, 1, 2, 3, 5, 8...)
const fibIndex = (n) => {
    let sequence = [1, 1]
    for (i = 2; i <= n; i++) {
        sequence.push(sequence[i-2] + sequence[i-1])
    }
    return sequence[n]
}

console.log(fibIndex(9))
