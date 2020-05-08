=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/jump-game/submissions/)

Runtime: 40 ms
Memory Usage: 10 MB
=end

def can_jump(nums)
  m = 0
  nums.each_with_index do |val, idx|
    if idx > m
      return false
    end
    m = [m, (idx+val)].max
  end
  true
end

print can_jump([2,3,1,1,4])