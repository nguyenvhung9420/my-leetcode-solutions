class Solution {
    func maximizeSweetness(_ sweetness: [Int], _ k: Int) -> Int {

        func testMinSweetness(_ m:Int) -> Bool {
            var count = k + 1, sum = 0
            for piece in sweetness {
                guard count > 0 else { break }
                sum += piece
                if sum >= m {
                    sum = 0
                    count -= 1
                }
            }
            return count == 0
        }

        var low = 1, high = sweetness.reduce(0,+) / (k+1)
        while low < high {
            let mid = (low + high + 1) >> 1
            if testMinSweetness(mid) {
                low = mid
            } else {
                high = mid - 1
            }
        }

        return low
    }
}