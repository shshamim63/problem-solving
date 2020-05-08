=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/minimum-path-sum/submissions/)

Runtime: 40 ms
Memory Usage: 9.8 MB
=end

def min_path_sum(grid)
  m = grid.length
  n = grid[0].length
  for i in 1...n
    grid[0][i] += grid[0][i-1]
  end
  for i in 1...m
    grid[i][0] += grid[i-1][0]
  end
  for i in 1...m
    for j in 1...n
      grid[i][j] += [grid[i-1][j], grid[i][j-1]].min
    end
  end
  grid[-1][-1]
end
input = [
  [1, 3, 1],
  [1, 5, 1],
  [4, 2, 1]
]
print min_path_sum(input)