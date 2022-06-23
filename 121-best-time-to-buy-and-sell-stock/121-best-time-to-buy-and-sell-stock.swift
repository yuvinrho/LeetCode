class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var minPrice = Int.max
        
        for price in prices {
            if price < minPrice {
                minPrice = price
            } else {
                maxProfit = max(maxProfit, price - minPrice)
            }
        }
        return maxProfit
    }
}