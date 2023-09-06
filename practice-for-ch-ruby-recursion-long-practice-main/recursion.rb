def range_iter(start, last)
    return [] if last < start
    new_arr = []
    (start...last).each do |num|
        new_arr << num
    end
    new_arr
end

def range_rec(start, last)
    return [start] if start == last - 1
    return [] if last <= start 


    return range_rec(start, last - 1) + [last-1]
end

def exp_1(b, n)
   return 1 if n == 0
   return b if n == 1
   b * exp_1(b, n - 1)
end

p exp_1(5, 0)
p exp_1(5, 1)
p exp_1(5, 2)
p exp_1(5, 100)

def exp_2(b, n)
  return 1 if n == 0
  return b if n == 1  
  
    if n.even?
       return exp_2(b, n / 2) ** 2
    else
      return  b * (exp_2(b, (n - 1) / 2) ** 2)
    end
end

p exp_2(5, 0)
p exp_2(5, 1)
p exp_2(5, 2)
p exp_2(5, 256)



# p range_iter(1,5)
# p range_iter(5, 1)
# p range_rec(1,5)
# # p range_rec(5, 1)
# p range_rec(5, 5)
# p range_rec(5, 6)
# p range_rec(5, 10)
# p range_rec(5, 5)
# p range_rec(10, 5)
# p range_rec(5, 6)
# p range_rec(1, 1000)