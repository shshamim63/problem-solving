=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/binary-tree-inorder-traversal/)

Runtime: 36 ms
Memory Usage: 9.3 MB
=end

def inorder_traversal(root)
    if root == nil
        return []
    end
    res, stack = [], []
    while true
        if root != nil
            stack.push(root)
            root = root.left
        else
            if stack.empty?
                return res
            end
            root = stack.pop
            res.push(root.val)
            root = root.right
        end
    end
end