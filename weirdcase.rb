def weirdcase string
  arr = string.split(' ')
  for i in 0..arr.length-1
    el = arr[i].chars
    for j in 0..el.length-1
      if j%2==0
        el[j] = el[j].upcase
      else
        el[j] = el[j].downcase
      end
    end
    arr[i] = el.join
  end
  arr.join(' ')
end
