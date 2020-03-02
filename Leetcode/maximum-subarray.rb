=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/maximum-subarray/submissions/)

Runtime: 40 ms
Memory Usage: 10 MB
=end
def max_sub_array(nums)
    n = nums.length
    dp = Array.new(n,0)
    dp[0] = nums[0]
    max = dp[0]       
    for i in 1...n
        dp[i] = nums[i] + (dp[i - 1] > 0 ? dp[i - 1] : 0)
        max = [max, dp[i]].max
    end
    max
end

print max_sub_array([-2,1,-3,4,-1,2,1,-5,4])