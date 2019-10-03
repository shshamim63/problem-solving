=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/merge-k-sorted-lists/)

Runtime: 1536 ms
Memory Usage: 10.6 MB
=end

def merge_two_lists(l1, l2)
    ans = temp = ListNode.new(0)
    while l1 and l2
        if l1.val < l2.val
            temp.next = l1
            l1 = l1.next
        else
            temp.next = l2
            l2 = l2.next
        end
        temp = temp.next
    end
    if l1 == nil
        temp.next = l2
    else
        temp.next = l1
    end
    return ans.next
end
def merge_k_lists(lists)
    return lists[0] if lists.size < 2
     first = lists[0]
    for i in 1..lists.size
        first = merge_two_lists(first, lists[i])
    end
    return first
end
