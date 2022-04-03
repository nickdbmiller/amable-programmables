// Repeat until the (sub)array is size 0:
    // Find midpoint of the current array
    // If target is the middle, stop!
    // If target is lower than the middle, repeat with the lower half of the original array
    // If the target is greater than the middle repeat with the upper half

    const binarySearch = (array, target) => {
    if (array.length <= 1) {
        return false
    } else {
        let sorted = array.sort((a, b) => a - b)
        let middle = sorted[Math.floor(sorted.length/2)]
        if (middle == target) {
            return middle
        } else if (middle > target) {
            return binarySearch(sorted.slice(0, Math.floor(sorted.length/2)), target)
        } else if (middle < target) {
            return binarySearch(sorted.slice(Math.floor(sorted.length/2), sorted.length), target)
        }
    }
}

console.log(binarySearch([1, 3, 5, 82, 4, 7, 9, 30], 30))
