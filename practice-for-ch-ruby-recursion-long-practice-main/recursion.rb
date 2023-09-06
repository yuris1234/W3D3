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

    # range_rec(start, start) --> [start] << range_rec(start, last-1) 
end

# p range_iter(1,5)
# p range_iter(5, 1)
# p range_rec(1,5)
# # p range_rec(5, 1)
# p range_rec(5, 5)
# p range_rec(5, 6)