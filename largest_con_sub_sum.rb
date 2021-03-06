def largest_contiguous_subsum(array)
  sub_arrays = []

  array.length.times do |idx1|
    ((idx1 + 1)...array.length).each do |idx2|
      sub_arrays << array[idx1..idx2]
    end
  end

  largest_sum = sub_arrays[0].inject(:+)
  sub_arrays.each do |sub_array|
    current_sum = sub_array.inject(:+)
    if current_sum > largest_sum
      largest_sum = current_sum
    end
  end

  largest_sum
end

def better_largest_contiguous_subsum(array)


  largest_sum = array.first
  current_sum = 0

  array.each do |element|
    if current_sum + element > 0
      current_sum += element
    else
      current_sum = 0
    end

    if current_sum > largest_sum
      largest_sum = current_sum
    end
  end
  largest_sum
end
