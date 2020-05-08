=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/two-sum/)

Runtime: 288 ms
Memory Usage: 9.5 MB
=end
def two_sum(nums, target)
  arr = []
  for i in (0...nums.length) do
    if nums.include?(target - nums[i]) && (nums.index(target - nums[i]) != i)
      arr += [i,nums.index(target - nums[i])].sort
      break
    end
  end
  arr 
end

inputs = [2, 7, 11, 15]
target = 9
print two_sum(inputs, target)