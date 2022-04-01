// Write a program that reads ten numbers and figures out which numbers is the third highest.

const thirdHighest = (arrNum) => {
    // Sort the array
    arrNum.sort((a, b) => b - a)
    // the third highest number will be at index 2
    return arrNum[2]
}

console.log(thirdHighest([10, 22, 34, 46, 45, 26, 7, 1001, 92, 1, 23, 45, 78]))
