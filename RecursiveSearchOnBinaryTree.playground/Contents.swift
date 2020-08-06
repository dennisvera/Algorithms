import UIKit

/// `Algorithm:` - Recursive Search Binary Tree

// 1. Binary Tree
//
//        10
//       /  \
//      5    14
//     /    /  \
//    1    11   20


// 2.
class Node {
  let value: Int
  var ledftChild: Node?
  var rightChild: Node?
  
  init(value: Int, ledftChild: Node?, rightChild: Node?) {
    self.value = value
    self.ledftChild = ledftChild
    self.rightChild = rightChild
  }
}

/// Left branch nodes
let oneNode = Node(value: 1, ledftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, ledftChild: oneNode, rightChild: nil)

/// Right branch nodes
let elevenNode = Node(value: 11, ledftChild: nil, rightChild: nil)
let twentyNode = Node(value: 20, ledftChild: nil, rightChild: nil)
let fourTeenNode = Node(value: 14, ledftChild: elevenNode, rightChild: twentyNode)

/// Root nodes
let tenRootNode = Node(value: 10, ledftChild: fiveNode, rightChild: fourTeenNode)

// 3.
// Interview question:
// Implement a search algorithm that searches through this tree for a particular searchValue

func search(node: Node?, searchValue: Int) -> Bool {
  if node == nil {
    return false
  }
  
  if node?.value == searchValue {
    return true
  } else if searchValue < node!.value {
    // recursion
    return search(node: node?.ledftChild, searchValue: searchValue)
  } else {
    // recursion
    return search(node: node?.rightChild, searchValue: searchValue)
  }
}

search(node: tenRootNode, searchValue: 20)

// 4.
// What is the point of binary search?
// A: Efficiency: the binary is much faster than a for-lop or index search.

// Index search
let list = [1, 5, 10, 11, 14, 20]
let index = list.firstIndex(where: { $0 == 20 })
