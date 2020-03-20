=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/symmetric-tree/)

Runtime: 28 ms
Memory Usage: 9.5 MB
=end

def is_symmetric(root)
    if root == nil
        return true
    end
    symmetricTree(root.left, root.right)
end
def symmetricTree(leftnode, rightnode)
    if leftnode == nil || rightnode == nil
        return leftnode == rightnode
    end
    if leftnode.val != rightnode.val
        return false
    end
    symmetricTree(leftnode.left, rightnode.right) && symmetricTree(leftnode.right, rightnode.left) 
end