//
//  BinaryNode.swift
//  DataStructures
//
//  Created by may on 5/10/23.
//

import Foundation

class BinaryNode<Element> {
	
	var value: Element
	var leftChild: BinaryNode?
	var rightChild: BinaryNode?
	
	init(value: Element) {
		self.value = value
	}
}

extension BinaryNode {
	func traverse_InOrder(_ visit: (Element) -> Void){
		leftChild?.traverse_InOrder(visit)
		visit(value)
		rightChild?.traverse_InOrder(visit)
	}
	
	func traverse_PreOrder(_ visit: (Element) -> Void){
		visit(value)
		leftChild?.traverse_PreOrder(visit)
		rightChild?.traverse_PreOrder(visit)
	}
	
	func traverse_PostOrder(_ visit: (Element) -> Void){
		leftChild?.traverse_PostOrder(visit)
		rightChild?.traverse_PostOrder(visit)
		visit(value)
	}
}
