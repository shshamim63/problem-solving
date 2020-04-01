=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/maximum-depth-of-binary-tree/)

Runtime: 36 ms
Memory Usage: 9.7 MB
=end

def max_depth(root)
    return 0 if root.nil?
    return 1 if root.left.nil? and root.right.nil?
    l = max_depth(root.left)
    r = max_depth(root.right)
    return 1 + (l > r ? l : r)
end