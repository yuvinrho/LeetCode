class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sDic: [Character: Int] = [:]
        var tDic: [Character: Int] = [:]
        
        for char in s {
            sDic[char, default: 0] += 1
        }
        
        for char in t {
            tDic[char, default: 0] += 1
        }
        
        return sDic == tDic
    }
}