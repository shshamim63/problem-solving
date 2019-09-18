=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/unique-paths/)

Runtime: 32 ms
Memory Usage: 9.2 MB
=end

def unique_paths(m, n)
    dp = Array.new(n,(Array.new(m,0)))
    for i in 0...n
        dp[i][0] = 1
    end
    for j in 0...m
        dp[0][j] = 1
    end
    for i in 1...n
        for j in 1...m
            dp[i][j] = dp[i-1][j] + dp[i][j-1] 
        end
    end
    return dp[n-1][m-1] 
end

print unique_paths(3, 2)