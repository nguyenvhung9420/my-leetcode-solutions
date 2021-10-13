class Solution {
     func merge<T:Comparable>(_ left: inout [T], _ m: Int, _ right: [T], _ n: Int) {
    // m = left count
    // n = right count
    
    var leftIndex = 0
    var rightIndex = 0
    
    var ordered: [T] = []
    
    
    while leftIndex < m && rightIndex < n { // when both left and right still have not reach its end yet
        let leftItem = left[leftIndex]
        let rightItem = right[rightIndex]
        
        if leftItem < rightItem {
            ordered.append(leftItem)
            leftIndex += 1
        } else if leftItem > rightItem {
            ordered.append(rightItem)
            rightIndex += 1
        } else {
            ordered.append(contentsOf: [leftItem, rightItem])
            leftIndex += 1
            rightIndex += 1
        }
    }
    
    while leftIndex < m { // when right reached its end, left continues to run
        let leftItem = left[leftIndex]
        ordered.append(leftItem)
        leftIndex += 1
    }
    
    while rightIndex < n { // when right reached its end, left continues to run
        let rightItem = right[rightIndex]
        ordered.append(rightItem)
        rightIndex += 1
    }
    
    // return:
    left = ordered
}
}