require "byebug"

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

# p exp_1(5, 0)
# p exp_1(5, 1)
# p exp_1(5, 2)
# p exp_1(5, 100)

def exp_2(b, n)
  return 1 if n == 0
  return b if n == 1  
  
    if n.even?
       return exp_2(b, n / 2) ** 2
    else
      return  b * (exp_2(b, (n - 1) / 2) ** 2)
    end
end

# p exp_2(5, 0)
# p exp_2(5, 1)
# p exp_2(5, 2)
# p exp_2(5, 256)



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

class Array
    def deep_dup
        new_arr = []
        self.each do |ele|
            if !ele.is_a?(Array)
                new_arr << ele
            else
                new_arr << ele.deep_dup
            end
        end
        new_arr
    end

end

def fibonacci_it(n)
  return [] if n == 0  
  return [1] if n == 1
  return [0, 1] if n == 2
  prev_fib = fibonacci_it(n - 1)

  prev_fib << previous_fib[- 1] + previous_fib[-2]
  previous_fib
end

def bsearch(array, n)
    if array.length == 0
        return nil
    end
    array = array.sort
    middle = array.length / 2

    if array[middle] < n 
        if bsearch(array[middle+1..-1], n) == nil
            return nil
        else
            return middle + bsearch(array[middle+1..-1], n) + 1
        end
    elsif array[middle] > n 
        if bsearch(array[0...middle], n) == nil
            return nil
        else
            return bsearch(array[0...middle], n)
        end
    else
        return middle
    end
end

def merge_sort(array)
    return [array] if array.length == 0 || array.length == 1
    middle = array.length / 2
    left = array[0...middle]
    right = array[middle..-1]
    merge_sort(left) + merge_sort(right)
end
    

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# bsearch([1,2,3,4,5], 4) # => 3
# p bsearch([1,2,3,4,5], 6) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6)

# p bsearch([3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], 11)



a = [5, 7, 1, 2]
p merge_sort(a)
