class Solution {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        var reshapedMatrix: [[Int]] = Array(repeating: Array(repeating: 0, count: c), count: r)
        let flatMatrix = mat.flatMap { $0 }
        
        if r * c != mat.count * mat[0].count {
            return mat
        }
        
        for (i, number) in flatMatrix.enumerated() {
            reshapedMatrix[i / c][i % c] = number
        }
        
        return reshapedMatrix
    }
}