class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1 = ((0..<m).map { nums1[$0] } + nums2).sorted()
    }
}