=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/longest-valid-parentheses/submissions/)

Runtime: 52 ms
Memory Usage: 9.7 MB
=end

def longest_valid_parentheses(s)
    stk = []
    stk.push(-1)
    maxL = 0
    for i in 0..s.size
        top = stk[-1]
        if top != -1 and s[i] == ')' and s[stk[-1]] == '('
            stk.pop
            maxL = [maxL, (i-stk[-1])].max
        else
            stk.push(i)
        end
    end
    maxL
end
input = ")()())"
puts longest_valid_parentheses(input)