class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        for num in Set(nums) {
            if nums.filter { $0 == num }.count >= 2 { return true }
        }
        return false
    }
}
