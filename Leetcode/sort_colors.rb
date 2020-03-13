=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/sort-colors/)

Runtime: 32 ms
Memory Usage: 9.3 MB
=end

def sort_colors(nums)
    i=0
    j = 0
    k = nums.length-1
    while i <= k
        if nums[i] == 0
            nums[i], nums[j] = nums[j], nums[i]
            i+=1
            j+=1
        elsif nums[i] == 2
            nums[i], nums[k] = nums[k], nums[i]
            k-=1
        else
            i+=1
        end
    end
    nums
end