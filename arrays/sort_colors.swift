// using inserting sort

class Solution {
    func sortColors(_ nums: inout [Int]) {
        var numbers: [Int] = nums
        for index in 1..<numbers.count  {
            let value = numbers[index]
            var position = index

            while position > 0 && numbers[position - 1] > value {
                numbers[position] = numbers[position - 1]
                position -= 1
            }

            numbers[position] = value
        }

        nums = (numbers)
    }
}