//
//  BinaryTree.swift
//  DataStructuresTests
//
//  Created by may on 5/10/23.
//

import XCTest
@testable import DataStructures

final class BinaryTreeTest: XCTestCase {

	/// sample binary tree where 0 is the root node
	var tree: BinaryNode<Int> = {
		let zero = BinaryNode(value: 0)
		let one = BinaryNode(value: 1)
		let two = BinaryNode(value: 2)
		let three = BinaryNode(value: 3)
		let four = BinaryNode(value: 4)
		let five = BinaryNode(value: 5)
		let six = BinaryNode(value: 6)
		let seven = BinaryNode(value: 7)
		let eight = BinaryNode(value: 8)
		let nine = BinaryNode(value: 9)
		let ten = BinaryNode(value: 10)
		
		// 1st layer
		zero.leftChild = one
		zero.rightChild = two
		
		// 2nd layer
		one.leftChild = three
		one.rightChild = four
		two.leftChild = five
		two.rightChild = six
		
		// 3rd layer
		three.rightChild = seven
		four.leftChild = eight
		four.rightChild = nine
		six.rightChild = ten
		
		return zero
	}()
	
	func test_traverse_InOrder(){
		var resultHolder: [Int] = []
		tree.traverse_InOrder { num in
			resultHolder.append(num)
		}
		
		XCTAssertEqual(resultHolder, [3, 7, 1, 8, 4, 9, 0, 5, 2, 6, 10])
	}
    
	func test_traverse_PreOrder(){
		var resultHolder: [Int] = []
		tree.traverse_PreOrder { num in
			resultHolder.append(num)
		}
		
		XCTAssertEqual(resultHolder, [0, 1, 3, 7, 4, 8, 9, 2, 5, 6, 10])
	}
	
	func test_traverse_PostOrder(){
		var resultHolder: [Int] = []
		tree.traverse_PostOrder { num in
			resultHolder.append(num)
		}
		
		XCTAssertEqual(resultHolder, [7, 3, 8, 9, 4, 1, 5, 10, 6, 2, 0])
	}

}
