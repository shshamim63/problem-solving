=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/merge-two-sorted-lists/submissions/)

Runtime: 36 ms
Memory Usage: 9.5 MB
=end

def merge_two_lists(l1, l2)
  dummy = cur = ListNode.new(0)
  while l1 and l2
    if l1.val < l2.val
    cur.next = l1
    l1 = l1.next
    else
      cur.next = l2
      l2 = l2.next
    end
    cur = cur.next
  end
  if l1 == nil
    cur.next = l2
  else
    cur.next = l1
  end
  dummy.next
end