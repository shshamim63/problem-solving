=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/invert-binary-tree/)

Runtime: 64 ms
Memory Usage: 9.3 MB
=end

def invert_tree(root)
  return nil unless !!root
  root.left, root.right = invert_tree(root.right), invert_tree(root.left) 
  root
end