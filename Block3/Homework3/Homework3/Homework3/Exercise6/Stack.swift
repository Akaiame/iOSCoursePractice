//
//  Stack.swift
//  Homework3
//
//  Created by Дмитрий Ильичёв on 15.08.2022.
//

import Foundation

class Node<T> {
    let value: T
    var next: Node?
    
    init(value: T) {
        self.value = value
    }
}

class Stack<T> {
    var top: Node<T>?
    
    func push(value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    
    func pop() -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
}

let stack = Stack<Int>()

//stack.push(value: 1)
//stack.push(value: 2)
//stack.push(value: 3)
//stack.pop()
//stack.pop()
//stack.pop()
//stack.pop()
