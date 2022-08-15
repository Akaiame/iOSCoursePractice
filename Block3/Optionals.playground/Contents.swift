import UIKit

/*
 Создайте опциональные переменные типов String, Int, Bool, Float. Разверните (unwrap) их
 разными способами
 */

var myOptString: String? = "Some"
var myOptInt: Int? = 2
var myOptBool: Bool? = true
var myOptDouble: Float?

//MARK: unwraping:

if myOptString != nil {
    print(myOptString!)
}

if let myOptInt = myOptInt {
    print(myOptInt)
}

let myBool = myOptBool ?? false

print(myBool)

func optionalUnwrap<T>(optional: T?) -> T? {
    guard let optional = optional else {
        print("nil")
        return optional
    }
    return optional
}

let test = optionalUnwrap(optional: myOptInt)
print("\(test)")
/*
 Создайте класс А, у которого будет опциональное свойство класса B. Пусть у класса B будет
 свойство “text” типа String. Создайте экземпляр класса B, задайте его свойству text значение.
 Создайте класс A и задайте его свойству значение только что созданного класса B
 */

class A {
    
    var text: B?
    init(text: B?){
        self.text = text
    }
}

class B {
    
    var text: String
    init(text: String) {
        self.text = text
    }
}

let testB = B(text: "Hello")
let testA = A(text: testB)

/*
 Выведите в консоль значение text. Значение в консоли будет помечено как “optional” Разверните
 значение text разными способами и выведите в консоль (на этот раз пометка “optional” должна
 исчезнуть)
 */

print(testA.text?.text) //optional

if let testA = testA.text?.text {
    print(testA)
}

if testA.text != nil {
    print(testA.text!.text)
    
} else {
    print("Empty")
}

let myTestA = testA.text?.text ?? "Empty"

print(myTestA)
