class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineDic: [Character: Int] = [:]
        var ransomNoteDic: [Character: Int] = [:]
        
        for char in magazine {
            magazineDic[char, default: 0] += 1
        }
        
        for char in ransomNote {
            ransomNoteDic[char, default: 0] += 1
        }
        
        for char in ransomNote {
            if(magazineDic[char] == nil || ransomNoteDic[char]! > magazineDic[char]! ) {
                return false
            }
        }
        
        return true
    }
}