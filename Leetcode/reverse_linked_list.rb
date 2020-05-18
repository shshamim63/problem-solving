=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/reverse-linked-list/)

Runtime: 36 ms
Memory Usage: 9.4 MB
=end

def reverse_list(head)
  prev = nil
  current_node = head
  current_next = current_node.next if current_node
  while current_node
    current_node.next = prev
    prev = current_node
    current_node = current_next
    current_next = current_next.next if current_next
  end
  prev
end