class Solution {
    func moveZeroes(_ numbers: inout [Int]) {
        var nums = numbers.filter { $0 != 0 }
        var nbOfZeros = numbers.count - nums.count 
        
        if nums.count == 0 {
            return 
        }  
    
        for j in 0..<nbOfZeros{
            nums.append(0)
        }
        numbers = nums
        return 
    }
}