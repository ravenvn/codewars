def binary_search(array, value, from = 0, to = nil)
  if to.nil?
    to = array.size - 1
  end

  if from > to
    return -1
  end

  mid = (from + to) / 2

  if value > array[mid]
    binary_search(array, value, mid + 1, to)
  elsif value < array[mid]
    binary_search(array, value, from, mid - 1)
  else
    return mid
  end
end

puts binary_search([1,2,3,4,5,7,8,9,10,22,35,36], 9)
puts binary_search([12,23,34,43,55,73,82,91,100,122,135,136], 100)
puts binary_search([12,23,34,43], 101)
