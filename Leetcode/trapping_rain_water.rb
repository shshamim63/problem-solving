=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/trapping-rain-water/)

Runtime: 224 ms
Memory Usage: 9.6 MB
=end

def trap(height)
  total_water = 0
  for i in 0...height.length do
    lmax = height[0..i].max
    rmax = height[i..height.length].max
    water_container = [lmax, rmax].min
    water = water_container - height[i]
    total_water += water
  end
  total_water
end

input = [0,1,0,2,1,0,1,3,2,1,2,1]
puts trap(input)
