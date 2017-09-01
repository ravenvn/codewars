def dirReduc(arr)
  b = Hash.new
  b['NORTH'] = 'SOUTH'
  b['SOUTH'] = 'NORTH'
  b['EAST'] = 'WEST'
  b['WEST'] = 'EAST'
  
  flag_while = true

  while flag_while do
    flag_for = true
    return arr if arr.length < 2

    for i in 0..(arr.length-2)
      if arr[i] == b[arr[i+1]]
        arr.slice!(i..(i+1))
        flag_for = false
      end

      break if flag_for == false
      flag_while = false if i == arr.length-2
    end
  end
  return arr
end

a = ["NORTH", "WEST", "SOUTH", "EAST"]
puts dirReduc(a)
