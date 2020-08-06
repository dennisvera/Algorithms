import UIKit

/// `Algorithm:` - Abstract Syntax Tree: Mathematical Expression Evaluation

// Example
// 5 + 25 * 6
5 + 25 * 6

// Represent the equation above in a tree
//       '+'
//      /   \
//    '*'    5
//    / \
//  25   6

// Node that represents a value or operator in abstract Syntax Tree
class Node {
  var operation: String?  // "+", "-", "*", "/"
  var value: Float?
  var leftChild: Node?
  var rightChild: Node?
  
  init(operation: String?, value: Float?, leftChild: Node?, rightChild: Node?) {
    self.operation = operation
    self.value = value
    self.leftChild = leftChild
    self.rightChild = rightChild
  }
}

/// 6 Node
let sixNode = Node(operation: nil, value: 6, leftChild: nil, rightChild: nil)
/// 5 Node
let fiveNode = Node(operation: nil, value: 5, leftChild: nil, rightChild: nil)
/// 25 Node
let twentyFiveNode = Node(operation: nil, value: 25, leftChild: nil, rightChild: nil)

/// Plus node
let multiplyTwentyFiveAndSixNode = Node(operation: "+", value: nil, leftChild: twentyFiveNode, rightChild: sixNode)

/// Root node
let rootPlusNode = Node(operation: "*", value: nil, leftChild: multiplyTwentyFiveAndSixNode, rightChild: fiveNode)

// Implement an algorithm, where the above tree evaluates to 155
func evaluate(node: Node) -> Float {
  if node.value != nil {
    return node.value!
  }
  
  if node.operation == "+" {
    // Apply recursion to protect against nil values
    return evaluate(node: node.leftChild!) + evaluate(node: node.rightChild!)
  } else if node.operation == "*" {
    return evaluate(node: node.leftChild!) * evaluate(node: node.rightChild!)
  }
  
  return 0
}

evaluate(node: rootPlusNode)

