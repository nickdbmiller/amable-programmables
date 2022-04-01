// Given a list of numbers find all pairs that sum to the goal number.

// Function takes an array of numbers and a goal number
const sumPairs = (numArr, goal) => {
    // Start with an empty array
    const answer = []

    // compare each number with every other number
    for (i = 0; i < numArr.length; i++) {
        for (j = 0; j < numArr.length; j++) {

            // if the numbers add up to the goal and aren't at the same index...
            if (numArr[i] + numArr[j] == goal && i != j) {

                // Push the numbers as an array into the answer array
                answer.push([numArr[i], numArr[j]])
            }
        }
    }

    // return the answer
    return answer
}

console.log(sumPairs([3, 1, 2, 300, 1000, 400, 200, 750, -150, 300], 600))