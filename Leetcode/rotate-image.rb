=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/rotate-image/)

Runtime: 32 ms
Memory Usage: 9.3 MB
=end

def rotate(matrix)
    n = matrix.length
    m = matrix[0].length
    for i in 0...n do
        for j in i...n do
            matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
        end
    end
     for i in 0...n do
         matrix[i].reverse!
     end
    matrix 
end
input_matrix = [
                [1,2,3],
                [4,5,6],
                [7,8,9]
               ]
puts rotate(input_matrix).inspect