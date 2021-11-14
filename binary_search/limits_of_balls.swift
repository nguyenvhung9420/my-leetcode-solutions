class Solution {
    func minimumSize(_ nums: [Int], _ maxOperations: Int) -> Int {
        var left = 1, right = nums.max()!
        while left < right {
            let center = (left + right) / 2
            if nums.reduce(into: Int(0), { $0 += ($1 - 1) / center }) > maxOperations {
                left = center + 1
            } else {
                right = center
            }
        }
        return left
    }
}