class Solution {
    func sortArrayByParityII(_ numbers: [Int]) -> [Int] {
        
        var A : [Int] = numbers
        var evenNumbers = A.filter { return $0 % 2 == 0 }
        var oddNumbers = A.filter { return $0 % 2 != 0 }

    var output: [Int] = [];
    for  i in 0..<evenNumbers.count  {
        output.append(contentsOf: [evenNumbers[i], oddNumbers[i]])
    }

    return output;
    }
}