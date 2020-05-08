=begin
PROBLEM DESCRIPTION:(https://leetcode.com/submissions/detail/262260695/)

Runtime: 36 ms
Memory Usage: 10.7 MB
=end

def majority_element(nums)
  counter = Hash.new(0)
  nums.each do |val|
    counter[val] += 1
  end
  ans = counter.values.max > (nums.length / 2) ? counter.key(counter.values.max) : 0 
end

puts majority_element([2,2,1,1,1,2,2])
