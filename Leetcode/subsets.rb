=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/subsets/)

Runtime: 32 ms
Memory Usage: 9.5 MB
=end

def subsets(nums)
  result = []
  result.push([])
  nums.each do |n|
    size = result.length
    for i in 0...size
      subset = result[i].dup
      subset.push(n)
      result.push(subset)
    end
  end
  result
end