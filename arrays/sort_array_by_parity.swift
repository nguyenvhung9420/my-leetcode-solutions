class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var toreturn: [Int] = []
        for each in nums {
            if each % 2 == 0 {
                toreturn.insert(each, at: 0)
            } else {
                toreturn.append(each)
            }
        }
        return toreturn
    }
}