/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var oneStep = head
        var twoStep = head
        
        while twoStep?.next?.next != nil {
            oneStep = oneStep?.next
            twoStep = twoStep?.next?.next
            
            if oneStep === twoStep { return true }            
        }
        return false
    }
}