=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/edit-distance/)

Runtime: 140 ms
Memory Usage: 11.1 MB
=end

def min_distance(word1, word2)
    m = word1.length
    n = word2.length
    dp = Array.new(m+1) { Array.new(n+1,0) }
    for i in 0..m
        dp[i][0] = i
    end
    for i in 1..n
        dp[0][i] = i
    end
    for i in  0...m
        for j in  0...n
            if word1[i] == word2[j]
                dp[i + 1][j + 1] = dp[i][j]
            else 
                dp[i + 1][j + 1] = [dp[i][j], dp[i][j + 1] , dp[i + 1][j]].min + 1
            end
        end
    end
    dp[m][n]
end