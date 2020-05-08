=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/unique-binary-search-trees/)

Runtime: 32 ms
Memory Usage: 9.2 MB
=end

def num_trees(n)
  total = Array.new(n+1,0)
  total[0] = 1
  total[1] = 1
  for i in 2..n
    for j in 0...i
      total[i] += (total[j] * total[i-j-1])
    end
  end
  total.pop
end