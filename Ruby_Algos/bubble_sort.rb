# Bubble Sort
def bubble_sort(array)
    unsorted = true
    while unsorted do
        i = 0
        unsorted = false
        while i < (array.length - 1)
            if array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                unsorted = true
            end
            i += 1
        end
    end
    array
end

if bubble_sort([4, 3, 78, 2, 0, 2]) == [0, 2, 2, 3, 4, 78]
    puts "Test passed!"
else
    puts "Test failed."
end