=begin
PROBLEM DESCRIPTION:(https://leetcode.com/problems/best-time-to-buy-and-sell-stock/solution/)

Runtime: 36 ms
Memory Usage: 10 MB
=end

def max_profit(prices)
    profit = 0
    buy = 1000000000
    for i in 0...prices.length
        if prices[i] < buy
            buy = prices[i]
        else
            profit = [profit,(prices[i]-buy)].max
        end
    end
    profit
end