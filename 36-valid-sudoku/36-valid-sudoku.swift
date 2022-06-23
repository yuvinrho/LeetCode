class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var subBoxes: [[Character]] = Array(repeating:[], count: 9)
        for i in 0..<9 {
            var row: [Character] = []
            var col: [Character] = []
            for j in 0..<9 {
                if board[i][j] != "." {
                    if row.contains(board[i][j]) { return false }
                    row.append(board[i][j])
                    
                    let subBoxIndex = 3 * (i / 3) + j / 3
                    if subBoxes[subBoxIndex].contains(board[i][j]) { return false }
                    subBoxes[subBoxIndex].append(board[i][j])
                }
                
                if board[j][i] != "." {
                    if col.contains(board[j][i]) { return false }                
                    col.append(board[j][i])  
                }
            }
        }
        return true
    }
}