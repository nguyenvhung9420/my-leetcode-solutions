/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */


class Solution {

class ListNode {
    public var value : Int
    public var nextNode: ListNode?
    
    public init(_ value:Int) {
        self.value = value
    }
    
    public init(_ val: Int, _ next: ListNode?) { self.value = val; self.nextNode = next; }
}

extension ListNode : CustomStringConvertible {
    public var description: String {
        var string = "\(value)"
        var node = self.nextNode
        
        while node != nil {
            string = string + " -- " + "\(node!.value)"
            node = node?.nextNode
        }
        return string
    }
}
    func sortList(_ l1: ListNode?) -> ListNode? {
        if l1 == nil || l1?.nextNode == nil {
            return l1
        }
        
        let dummyNode = ListNode.init(Int(Int16.min))
        var pre = dummyNode
        var cur = l1
        var rear:ListNode? = nil
        
        while cur != nil {
            rear = cur?.nextNode
            while pre.nextNode != nil && pre.nextNode!.value < cur!.value {
                pre = pre.nextNode!
            }
            cur?.nextNode = pre.nextNode
            pre.nextNode = cur
            cur = rear
            pre = dummyNode
        }
        return dummyNode.nextNode
    }
}