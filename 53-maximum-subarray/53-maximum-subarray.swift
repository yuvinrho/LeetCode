class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var subarraySum = nums[0]
        var maxValue = nums[0]
        
        for i in 1..<nums.count {
            subarraySum = max(nums[i], subarraySum + nums[i])
            maxValue = max(subarraySum, maxValue)
        }
        
        return maxValue
    }
}