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

def bubble_sort_by(array)
  array.length.times do
    array.each_index do |idx|
      diff = yield(array[idx], array[idx + 1]) if idx < array.length - 1
      array[idx], array[idx + 1] = array[idx + 1], array[idx] if diff.to_i.positive?
    end
  end
  p array
end

bubble_sort_by(%w[hi hello hey help]) { |left_word, right_word| left_word.length - right_word.length }
