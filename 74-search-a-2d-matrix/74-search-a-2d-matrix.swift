class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        for row in 0..<matrix.count {
            print(matrix[row].last!)
            if matrix[row].last! >= target {
                return matrix[row].contains(target)
            } 
        }
        return false
    }
}