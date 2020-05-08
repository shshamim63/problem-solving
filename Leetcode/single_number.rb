=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/single-number/)

Runtime: 36 ms
Memory Usage: 10 MB
=end


def single_number(nums)
  for i in 1...nums.length
    nums[0] ^= nums[i]
  end
  nums[0]
end