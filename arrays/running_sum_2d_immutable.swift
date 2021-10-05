
class NumMatrix {
private var matrix: [[Int]] = []
    init(_ matrix: [[Int]]) {
        self.matrix = matrix
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        var arrays = self.matrix[row1...row2]
        var total: Int = 0
        for array in arrays {
            total += self.sumRow(array: array, from:col1, to: col2 )
        }
        return total
    }
    
    private func sumRow(array: [Int], from: Int, to: Int) -> Int {
        var total: Int = 0
        for i in from...to {
            total += array[i]
        }
        return total
    }
}

/**
 * Your NumMatrix object will be instantiated and called as such:
 * let obj = NumMatrix(matrix)
 * let ret_1: Int = obj.sumRegion(row1, col1, row2, col2)
 */