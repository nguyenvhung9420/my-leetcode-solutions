class MyCircularQueue: CustomStringConvertible {
    
    private var elements: [Int?]
    private var front = -1  // index as -1 means there is still no value
    private var rear = -1 // index as -1 means there is still no value
    
    init(_ count: Int) {
        elements = Array(repeating: nil, count: count)
    }
    
    func enQueue(_ element: Int) -> Bool {
        // if queue is empty
        if front == -1 && rear == -1 {
            front = 0
            rear = 0
            elements[rear] = element
            return true
        }
        
        if isFull() {
            print("QUEUE IS FULL")
            return false
        }
        
        rear = (rear + 1) % elements.count // get the next slot to put the new element in
        elements[rear] = element
        return true
    }
    
    func deQueue() -> Bool {
        if isEmpty() {
            print("QUEUE IS EMPTY")
            // return nil
            return false
        }
        
        // if queue has only single element
        if front == rear {
            defer {
                elements[front] = nil
                front = -1
                rear = -1
            }
            // return elements[front]
            return true
        }
        
        defer {
            elements[front] = nil
            front = (front + 1) % elements.count
        }
        // return elements[front]
        return true
    }
    
    func Front() -> Int {
        return self.front
    }
    
    func Rear() -> Int {
        return self.rear
    }
    
    func isEmpty() -> Bool {
        front == -1 && rear == -1
    }
    
    func isFull() -> Bool {
        ((rear + 1) % elements.count) == front
    }
    
    var description: String {
        if isEmpty() { return "Queue is empty..." }
        return "---- Queue start ----\n"
            + elements.map({String(describing: "\($0)")}).joined(separator: " -> ")
            + "\n---- Queue End ----\n"
    }
    
    var peek: Int? {
        if isEmpty() { return nil }
        return elements[front]
    }
}