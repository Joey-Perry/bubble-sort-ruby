def bubble_sort(unsorted_array)
    swap_counter = false
    unsorted_array.each_with_index do |value, index|
        if index + 1 == unsorted_array.length
            break
        else
            if value > unsorted_array[index + 1]
                copy_first_element = value
                copy_second_element = unsorted_array[index + 1]
                unsorted_array[index] = copy_second_element
                unsorted_array[index + 1] = copy_first_element
                swap_counter = true
            else
                nil
            end
        end
    end
    swap_counter == true ? bubble_sort(unsorted_array) : unsorted_array
    p unsorted_array
end







# Test Case
bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]