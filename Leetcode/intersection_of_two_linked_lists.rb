=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/intersection-of-two-linked-lists/)

Runtime: 92 ms,
Memory Usage: 11.7 MB
=end

def getIntersectionNode(headA, headB)
  pa = headA
  pb = headB
  while pa != pb
    pa = pa.nil? ? headB : pa.next
    pb = pb.nil? ? headA : pb.next
  end
  pa
end