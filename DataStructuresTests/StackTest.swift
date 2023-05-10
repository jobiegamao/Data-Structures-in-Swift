//
//  StackTest.swift
//  DataStructuresTests
//
//  Created by may on 5/10/23.
//

import XCTest
@testable import DataStructures

final class StackTest: XCTestCase {
	var testStack = Stack<String>()
	
	override func setUp() {
		testStack.push("apple")
		testStack.push("bottom")
	}
	
	func test_Push(){
		XCTAssertNotNil(testStack.description)
		print(testStack.description)
	}
	
	func test_Pop(){
		XCTAssertEqual(testStack.pop(), "bottom")
	}
	
	func reversedArray<Element>(_ array: [Element]){
		var arrStack = Stack(elements: array)
		
		while let val = arrStack.pop() {
			print(val)
		}
	}
	func test_PrintReversedArray(){
		let arr = [1,2,3]
		reversedArray(arr)
	}
	
	func isParanthesisBalanced(_ string: String) -> Bool {
		
		guard string.contains("(") else {
			print("no parenthesis in sentence")
			return false
		}
		
		var stack = Stack<Character>()
		
		for char in string {
			if char == ")" {
				if stack.isEmpty {
					return false
				} else {
					stack.pop()
				}
			}
			
			if char == "(" {
				stack.push(char)
			}
		}
		
		return stack.isEmpty
		
	}
	
	func test_ParenthesisBalanced(){
		let st1 = "hello"
		let st2 = ")(hello()"
		let st3 = "(())hello)"
		let st4 = "(((())))"
		
		XCTAssertFalse(isParanthesisBalanced(st1))
		XCTAssertFalse(isParanthesisBalanced(st2))
		XCTAssertFalse(isParanthesisBalanced(st3))
		XCTAssertTrue(isParanthesisBalanced(st4))
		
	}
}
