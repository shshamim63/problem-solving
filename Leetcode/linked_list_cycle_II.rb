=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/linked-list-cycle-ii/)

Runtime: 52 ms
Memory Usage: 16 MB
=end

def hasCycle(head)
    p = head
    q = head
    while p && q && q.next
        p = p.next
        q = q.next.next
        return p if p == q
    end
    false
end

def detectCycle(head)
    cycleNode = hasCycle(head)
    return nil unless cycleNode
    slow = head if head
    until slow == cycleNode
         slow = slow.next
         cycleNode = cycleNode.next
    end
    slow
end