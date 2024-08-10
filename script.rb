# Sorts an array using the Bubble Sort algorithm
def bubble_sort(array)
  # Return the array if it has 0 or 1 elements
  return array if array.length <= 1

  loop do
    swapped = false

    # Compare each pair of adjacent elements
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        # Swap elements if they are in the wrong order
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    # If no swaps occurred, the array is sorted
    break unless swapped
  end

  # Return the sorted array
  array
end

# Print the sorted array
p bubble_sort([4, 3, 78, 2, 0, 2])