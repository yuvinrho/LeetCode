class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result: [Int] = []
        var nums1 = nums1
        var nums2 = nums2
        if nums1.count < nums2.count {
            swap(&nums1, &nums2)
        }
        
        for number in nums2 {
            if nums1.contains(number) {
                result.append(number)
                nums1.remove(at: nums1.firstIndex(of: number)!)
            }
        }
        
        return result
    }
}