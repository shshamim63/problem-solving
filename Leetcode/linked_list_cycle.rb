=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/linked-list-cycle/)

Runtime: 52 ms
Memory Usage: 16 MB
=end
def hasCycle(head)
  slow = head if head
  fast = head.next if head
  while(fast)
    if fast.next
        slow = slow.next
        fast = fast.next.next
    else
        fast = nil
    end 
    return true if slow == fast
  end
  false
end
