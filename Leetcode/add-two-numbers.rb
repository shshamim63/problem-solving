=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/add-two-numbers/)

Runtime: 52 ms
Memory Usage: 9.7 MB
=end

def add_two_numbers(l1, l2)
    dummy = cur = ListNode.new(0)
    carry = 0
    while (l1 or l2)
        if l1
            carry += l1.val
            l1 = l1.next
        end
        if l2
            carry += l2.val
            l2 = l2.next
        end
        cur.next = ListNode.new(carry%10)
        cur = cur.next
        carry = carry / 10
    end
    if carry > 0
        cur.next = ListNode.new(carry)
    end
    return dummy.next
end