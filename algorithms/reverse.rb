def reverse(array)
  last_index = array.size - 1
  first_index = 0

  loop do
    break if last_index <= first_index

    temp_num = array[first_index]
    array[first_index] = array[last_index]
    array[last_index] = temp_num

    last_index -= 1
    first_index += 1
  end
  array
end
