class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var charDic: [Character: Int] = [:]
        for char in s {
            charDic[char, default: 0] += 1
        }
        
        for (index, char) in s.enumerated() {
            if charDic[char] == 1 { return index }
        }
        
        return -1
    }
}