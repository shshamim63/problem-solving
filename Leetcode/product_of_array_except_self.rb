=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/product-of-array-except-self/)

Runtime: 64 ms
Memory Usage: 16.3 MB
=end

def product_except_self(nums)
  arr_length = nums.length
  first_product = Array.new(arr_length, 1)
  output_product = Array.new(arr_length, 1)
  for i in 1...arr_length do
    first_product[i] = first_product[i - 1] * nums[i - 1] 
  end
  j = arr_length -1
  while 0 < j
    output_product[j - 1] = output_product[j] * nums[j]
    j -= 1
  end
  output_product.zip(first_product).map{|num1, num2| num1 * num2}
end