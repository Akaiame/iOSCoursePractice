import UIKit

/*
 ● Напишите расширение “square” на Int, позволяющее возводить число в квадрат
 ● Напишите расширение на String, которое позволит из текста вернуть:
 ○ Первое слово
 ○ Первую часть предложения до запятой
 ○ Первое предложение
 */

extension Int {
    var square: Int {return self * self}
}

extension String {
    var firstWord: String { return self.components(separatedBy: " ").first ?? ""}
    var toComma: String { return self.components(separatedBy: ",").first ?? ""}
    var firstSentence: String { return self.components(separatedBy: ".").first ?? ""}
}

let str: String

str = "I love, swift. And my glass!"
str.firstWord

/*
 Создайте протокол Runnable с функцией run, Flyable с функцией fly, Alive с функциями
 breath, eat и grow. В каждой функции пусть будет print с выводом в консоль названия
 функции.
 */

protocol Runnable {
    func run()
}

protocol Flyable {
    func fly()
}

protocol Alive {
    var name: String { get set }
    func breath()
    func eat()
    func grow()
}

/*
 ● Создайте расширение на Alive, с дефолтной реализацией функций breathe, eat. В этой
 реализации должно выводиться сообщение в консоль “breathe” / “eat”
 */

extension Alive {
    
    func breath() {
        print("\(name) - breath")
    }
    
    func eat() {
        print("\(name) - eat")
    }
}

extension Runnable {
    
    func run() {
        print("is running now")
    }
}

extension Flyable {
    
    func fly() {
        print("is flying now")
    }
}

/*
 ● Создайте 6 персонажей для вашей игры с помощью структур, каждый из них должен
 соответствовать как минимум одному протоколу
 ● Добавьте дефолтную реализацию для всех протоколов (в ней будет вывод сообщения с
 названием функции через команду print())
 ● В половине созданных структур реализуйте методы протокола, в которых будет
 выводиться название функции и название структуры, например print(“Iron man - Fly”)
 */

struct Fox: Alive, Runnable {
    var name = "Fox"
    
    func run() {
        print("Fox run")
    }
    
    func grow() {
        print("Fox growing")
    }
}

struct Eagle: Alive, Flyable {
    var name = "Eagle"
    
    func grow() {
        print("Eagle growing")
    }
}

struct Robot: Runnable {
    var name = "Robot"
    
    func run() {
        print("Robot is running")
    }
}

struct Tiger: Alive, Runnable {
    var name = "Tiger"
    
    func run() {
        print("Tiger run")
    }
    
    func grow() {
        print("Tiger growing")
    }
}

struct Panda: Alive, Runnable {
    var name = "Panda"
    
    func run() {
        print("Panda run")
    }
    
    func grow() {
        print("Panda growing")
    }
}

struct Monkey: Alive, Runnable {
    var name = "Monkey"
    
    func run() {
        print("Monkey run")
    }
    
    func grow() {
        print("Monkey growing")
    }
}

let tiger1 = Tiger()
let monkey1 = Monkey()
let robot = Robot()
let eagle = Eagle()

eagle.grow()
eagle.fly()
robot.run()
monkey1.breath()
monkey1.eat()
tiger1.breath()
tiger1.run()

extension Int {
    
    func toPow(pow: Int) -> Int {
        var result = pow > 0 ? self : 1
        
        if pow > 1 {
            var i = 1
            
            while i < pow {
                result *= self
                i += 1
            }
        }
        return result
    }
}

let num = 4
num.toPow(pow: 3)

extension String {
    
    func isPalindrome(str: String) -> Bool {
        if str.count < 2 {
            return false
        } else if str == String(str.reversed()) {
            return true
        } else {
            return false
        }
        
    }
    var isPalindrome : Bool {
        return self.lowercased() == String(self.lowercased().reversed())
    }
}

let madam = "Madam"
madam.isPalindrome
