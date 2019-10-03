=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/group-anagrams/)

Runtime: 176 ms
Memory Usage: 21.5 MB
=end

def group_anagrams(strs)
    strs.sort.group_by { |s| s.chars.sort }.values.sort! { |a, b| a.size <=> b.size } 
end