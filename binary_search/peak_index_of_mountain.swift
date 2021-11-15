class Solution {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
         var start: Int = 0 
        var end: Int = arr.count - 1
        
        while start <= end {
            var mid: Int = start + (end - start)/2
            
            if(arr[mid] > arr[mid + 1]){
                end = mid - 1
            }else {
                start = mid + 1
            }
        }
        return start
    }
}