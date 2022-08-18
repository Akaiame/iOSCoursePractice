//
//  LinkedList.swift
//  Homework3
//
//  Created by Дмитрий Ильичёв on 15.08.2022.
//

import Foundation

class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode?
    var previous: LinkedListNode?
    
    init(value: T) {
        self.value = value
    }
}


struct LinkedList<T> {
    public typealias Node = LinkedListNode<T>
    
    private var head: Node?
    public var first: Node? {
        return head
    }
    public var last: Node? {
        guard var node = head else { return nil }
        while let next = node.next {
            node = next
        }
        return node
    }
    
    public var count: Int {
        guard var node = head else { return 0 }
        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    
    public var print: String {
        var stringArray = "["
        guard var node = head else { return stringArray + "]"}
        stringArray += "\(node.value), "
        while let next = node.next {
            node = next
            stringArray += "\(node.value)"
        }
        return stringArray + "]"
    }
    
    public mutating func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = last {
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
}

//var list = LinkedList<String>()
//list.append(value: "Dima")
//list.append(value: "Dimdawda")
//list.count
//list.print
