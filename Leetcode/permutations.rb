=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/permutations/)

Runtime: 48 ms
Memory Usage: 9.4 MB
=end

def dfs(nums, path, res)
  if nums.size == 0
    res << path.to_a
  end
  for i in 0...nums.size do
    dfs(nums[0...i]+nums[i+1...nums.size], path+[nums[i]], res)
  end
end

def permute(nums)
  res = []
  dfs(nums, [], res)
  res
end

input = [1,2,3]
puts permute(input).inspect