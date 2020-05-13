=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/number-of-islands/)

Runtime: 56 ms
Memory Usage: 13.5 MB
=end

def dfs(grid, i, j)
  is_island = 0
  unless i < 0 || i >= grid.length || j < 0 || j >= grid[i].length || grid[i][j] == '0'
    grid[i][j] = '0'
    dfs(grid, i+1, j)
    dfs(grid, i-1, j)
    dfs(grid, i, j-1)
    dfs(grid, i, j+1)
    is_island = 1
  end
  is_island
end
def num_islands(grid)
  number_of_island = 0
  unless grid == nil || grid.length == 0
    for i in 0...grid.length do
      for j in 0...grid[i].length do
        if grid[i][j] == '1'
          number_of_island += dfs(grid, i, j)
        end
      end
    end
  end
  number_of_island
end