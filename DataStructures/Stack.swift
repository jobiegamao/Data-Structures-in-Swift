//
//  Stack.swift
//  DataStructures
//
//  Created by may on 5/10/23.
//

import Foundation

struct Stack<Element> {
	private var stackStorage: [Element] = []
	
	var isEmpty: Bool {
		peek() == nil
	}
	
	init(elements: [Element]){
		stackStorage = elements
	}
	
	/// Add an element to the stack
	/// - Parameter element: element is any datatype that will be added. Data type will be init onced Stack is init
	mutating func push(_ element: Element){
		stackStorage.append(element)
	}
	
	/// Pops out the last element in Stack
	/// - Returns: popLast() returns the last item but we dont need it thus to shut off warnings, add @discardableResult and expected result -> Element?
	@discardableResult
	mutating func pop() -> Element? {
		stackStorage.popLast()
	}
	
	func peek() -> Element? {
		stackStorage.last
	}
	
	
}


extension Stack: CustomStringConvertible {
	var description: String {
		"""
		--TOP--
		\(stackStorage.map { "\($0)" }.reversed().joined(separator: "\n"))
		--BOTTOM--
		"""
	}
}

extension Stack: ExpressibleByArrayLiteral {
	/// Stack calls can be called without specifying datatype (element type)
	/// type inference
	/// - Parameter elements: data type
	 init(arrayLiteral elements: Element...) {
		stackStorage = elements
	 }
}
