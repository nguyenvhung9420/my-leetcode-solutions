// Moving window

class MovingAverage {
    var arr: [Int] = []
    var ptr: Int = 0
    var sum: Double = 0.0
    var length: Int = 0
    
    init(_ size: Int) { 
        length = size
        arr = Array(repeating: 0, count: size)
    }
    
    public func next(_ val: Int) -> Double {
        if ptr >= length {
            sum -= Double(arr[ptr%length])
        }
        arr[ptr%length] = val
        sum += Double(val)
        ptr += 1
        return ptr >= length ? sum/Double(length) : sum/Double(ptr)
    }
}

/**
 * Your MovingAverage object will be instantiated and called as such:
 * let obj = MovingAverage(size)
 * let ret_1: Double = obj.next(val)
 */