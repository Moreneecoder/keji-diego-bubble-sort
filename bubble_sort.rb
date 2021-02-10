def bubble_sort(array)
  times = array.size
  while times.positive?
    array.each_with_index do |number, idx|
      array[idx], array[idx + 1] = array[idx + 1], array[idx] if (idx < array.length - 1) && (number > array[idx + 1])
    end
    times -= 1
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
