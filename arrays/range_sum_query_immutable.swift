class NumArray {
    private var nums: [Int] = []
    init(_ nums: [Int]) {
        self.nums = nums
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        var total: Int = 0 
        var toReturn: Int = 0
        for i in left...right {
            total += self.nums[i]
        }
        return total
    }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * let obj = NumArray(nums)
 * let ret_1: Int = obj.sumRange(left, right)
 */