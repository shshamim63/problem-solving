=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/longest-substring-without-repeating-characters/submissions/)

Runtime: 76 ms
Memory Usage: 9.4 MB
=end

def length_of_longest_substring(s)
    prev=""
    curr=""
    for i in (0...s.length) do
        unless curr.include?(s[i])
            curr += s[i]
        else
            if prev.length < curr.length
                prev = curr
            end
            curr = curr[(curr.index(s[i])+1)..-1] + s[i]
        end
    end
    [prev.length,curr.length].max
end

input_str ="abcabcbb"
puts length_of_longest_substring(input_str)