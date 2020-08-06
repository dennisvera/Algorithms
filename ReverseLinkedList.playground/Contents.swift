import UIKit

/// `Algorithm:` -  Reverse Linked List

// Linked list: 1 -> 2 -> 3 -> nil

/// Define a data structure that supports the list above
class Node {
  
  let value: Int
  var next: Node?
  
  init(value: Int, next: Node?) {
    self.value = value
    self.next = next
  }
}

let threeNode = Node(value: 3, next: nil)
let twoNode = Node(value: 2, next: threeNode)
let oneNode = Node(value: 1, next: twoNode)

func printList(head: Node?) {
  var currentNode = head
  
  while currentNode != nil {
    print(currentNode?.value ?? -1)
    currentNode = currentNode?.next
  }
}

printList(head: oneNode)

func reverseList(head: Node?) -> Node? {
  var currentNode = head
  var previousNode: Node?
  var nextNode: Node?
  
  while currentNode != nil {
    nextNode = currentNode?.next
    currentNode?.next = previousNode
    previousNode = currentNode
    
    currentNode = nextNode
  }
  
  return previousNode
}

let reversedlist = reverseList(head: oneNode)
printList(head: reversedlist)
