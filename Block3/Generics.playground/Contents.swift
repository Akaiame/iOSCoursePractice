import UIKit

/*
 Напишите generic:
 ● Функцию, принимающую два параметра и меняющую местами их значения
 ● Функцию, принимающую два параметра и возвращающую typle с ними же
 ● Функцию сложения, которая принимает два параметра и возвращает их сумму
 */

//MARK: - Swapping

var str1 = "2"
var str2 = "1"

func swapValues<T>(_ val1: inout T, _ val2: inout T) {
    (val1, val2) = (val2, val1)
}

print(str1)
swapValues(&str1, &str2)
print(str1)

//MARK: - Wrapping in Tuple

func tupleWrap<T>(_ val1: T, _ val2: T) -> (T,T) {
    (val1,val2)
}

let testTuple = tupleWrap(str1, str2)
print(testTuple)

//MARK: - Summation of all types

protocol Summable {
    static func +(val1: Self, val2: Self) -> Self
}

extension Int: Summable{
    
}
extension String: Summable {
    
}
extension Double: Summable {
    
}
extension Float: Summable {
    
}

func addValues<T: Summable>(_ val1: T, _ val2: T) -> T {
    val1 + val2
}

addValues(str1, str2)

/*
 ● Тип, который содержит свойство - Dictionary с данными.
 Напишите функции, которые добавляют в этот словарь значение
 по ключу и достают значение по ключу
 */

//MARK: - Box

struct Box<T: Hashable, D > {
    var bag: [T:D] = [:]
    
    mutating func addValue(_ key: T, _ value: D) {
        bag[key] = value
    }
    
    mutating func takeValue(_ key: T) -> D? {
        guard let unwraped = bag[key] else {
            return bag[key]
        }
        return unwraped
    }
}

var bag1 = Box<Int, String>()

bag1.addValue(4, "Boris")
bag1.addValue(5, "Alex")
bag1.addValue(2, "Alice")

print(bag1.bag)
bag1.takeValue(2)

/*
 В swift нет такого множества, как stack и linked list. Но вы их можете реализовать. Поищите в интернете
 информацию о том как они работают и напишите их как generic типы.
 Существующие множества в swift уже написаны через generic типы, так что вы можете почувствовать себя соавтором
 свифта ;)
 */

//MARK: - LinkedList

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

var list = LinkedList<String>()
list.append(value: "Dima")
list.append(value: "Dimdawda")
list.count
list.print

//MARK: - Stack

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

stack.push(value: 1)
stack.push(value: 2)
stack.push(value: 3)
stack.pop()
stack.pop()
stack.pop()
stack.pop()
