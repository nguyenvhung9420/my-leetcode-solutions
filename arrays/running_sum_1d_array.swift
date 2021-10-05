// Running Sum of 1d Array
class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        
        var results: [Int] = []
        var total: Int = 0
        
        for i in 0..<nums.count {
            total += nums[i]
            results.append(total)
        }
        
        return results
        
    }
}