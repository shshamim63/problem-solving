=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/climbing-stairs/)

Runtime: 32 ms
Memory Usage: 9.3 MB
=end
def climb_stairs(n)
  dp = Array.new(n+1, 0)
  dp[0] = 1
  dp[1] = 1
  for i in 2..n
      dp[i] = dp[i-1] + dp[i- 2]
  end
  dp[n]
end