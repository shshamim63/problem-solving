=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/move-zeroes/)

Runtime: 36 ms
Memory Usage: 9.8 MB
=end

def move_zeroes(nums)
  occur = nums.count(0)
  if occur > 0
      nums.delete(0)
      current_length = nums.length
      nums.fill(0,current_length,occur)
  end
  nums
end