class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var pascalTriangle: [[Int]] = [[1], [1, 1]]
        var prevPascalTriangle: [Int] = [1, 1]
        
        if numRows == 1 { return [[1]] }
        if numRows == 2 { return pascalTriangle }
          
        for i in 2..<numRows {
            var currentPascalTriangle: [Int] = []
            currentPascalTriangle.append(1)
            for j in 0..<prevPascalTriangle.count - 1 {
                currentPascalTriangle.append(prevPascalTriangle[j] + prevPascalTriangle[j + 1])
            }
            currentPascalTriangle.append(1)
            pascalTriangle.append(currentPascalTriangle)
            prevPascalTriangle = currentPascalTriangle
        }
        return pascalTriangle
    }
}