=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/house-robber/)

Runtime: 28 ms
Memory Usage: 9.3 MB
=end

def rob(nums)
  nums_len = nums.length
  res = 0
  if nums_len == 0 || !nums
    res = 0
  elsif nums_len > 0 and nums_len <=2 
    res = nums.max
  else
    dp = Array.new(nums_len, 0)
    dp[0] = nums[0]
    dp[1] = [nums[0], nums[1]].max
    for i in 2...nums_len
      dp[i] = [nums[i] + dp[i-2], dp[i-1]].max
    end
    res = dp[nums_len-1]
  end
  res
end