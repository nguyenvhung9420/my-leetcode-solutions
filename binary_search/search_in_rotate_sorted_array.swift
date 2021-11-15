class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var map: [Int: Int] = [:]

    for i in 0..<nums.count {
        map[nums[i]] = i
    }
        
        if Array(map.keys).filter({ $0 == target }).count > 0 {
            return map[target]!
        } 
    
    return -1;
    }
}