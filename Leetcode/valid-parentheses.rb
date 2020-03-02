=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/valid-parentheses/submissions/)

Runtime: 32 ms
Memory Usage: 9.3 MB
=end

def is_valid(s)
    i = 0
    stack = []
    while i < s.length
        if s[i] == '{' or s[i] == '[' or s[i] == '('
            stack.push(s[i])
        elsif s[i] == '}' or s[i] == ']' or s[i] == ')'
            if (stack[-1] == '{' and s[i] == '}') or 
                (stack[-1] == '[' and s[i] == ']') or 
                (stack[-1] == '(' and s[i] == ')')
                stack.pop
            else
                return false
            end
        end
        i+=1
    end    
    if stack.size == 0
        return true
    else
        return false
    end 
end

parentheses = "()[]{}"
puts is_valid(parentheses);