/**
 * // This is ArrayReader's API interface.
 * // You should not implement it, or speculate about its implementation
 * public class ArrayReader {
 *     public func get(_ index: Int) -> Int {}
 * }
 */

class Solution {
    func search(_ reader: ArrayReader, _ target: Int) -> Int { 
        if reader.get(0) == target { return 0 } 
        var result = -1 
        var leftIndex = 1
        var rightIndex = 2
        
        while reader.get(rightIndex) < target { 
            leftIndex = rightIndex + 1
            rightIndex *= 2
        }
        
        while leftIndex <= rightIndex { 
            let pivot = leftIndex + (rightIndex - leftIndex) / 2 // the pointer when divide array by half
            let pivotValue = reader.get(pivot)
            if pivotValue == target {
                result = pivot
                break
            }
            else if pivotValue < target {
                leftIndex = pivot + 1
            } else {
                rightIndex = pivot - 1
            }
        }
        return result
    }
}