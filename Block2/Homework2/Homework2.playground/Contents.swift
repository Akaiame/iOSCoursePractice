import UIKit
import CoreGraphics

/*
 1. Создайте класс Матрос (Sailor), в котором будет инициализатор, одно
 свойство - имя матроса и один метод "introduceMyself". При вызове этого метода, в
 консоль будет выводиться сообщение "Привет, меня зовут *имя матроса*!"
 
 2. Создайте класс Корабль, в котором будет инициализатор, два свойства:
 название корабля и массив “матросы”. Добавьте также функцию "introduceAll",
 которая будет выводить приветствие от имени всех матросов, после чего выводить
 сообщение "Мы с корабля *имя корабля*"
 
 3. Через инициализатор создайте 5 экземпляров класса Матрос и класс
 Корабль, в который передайте список созданных матросов. Вызовите функцию
 introduceAll. Вы должны получить в консоли приветствие от имени всех матросов и
 название корабля
 
 4. Создайте класс Titanic, наследник класса Ship. И класс TitanicSeilor,
 наследник Seilor. Пусть TitanicSeilor будет иметь ту же функцию introduseMyself, но
 сообщение будет выводить на английском. Аналогично класс Titanic, только пусть
 его функция introduceAll выводит в на двух языках: то же сообщение что и Ship, а
 после - такое же сообщение на английском. Не меняйте существующие классы
 Ship и Seilor
 
 5. Создайте класс Calculator, с функциями + - * /. Создайте класс CalculatorPro, который будет также вычислять
 процент от числа и возводить число в степень
 
 5.1* Создайте класс SuperProCalc, наследник CalculatorPro, который будет вычислять сложные проценты для расчета
 суммы депозита на указанный период времени с указанной процентной ставкой
 
 6. Создайте функцию которая принимает 1 параметр, процент заряда
 батареи. Пусть функция вернет сообщения для пользователя в зависимости от этого процента:
 ● если 100%: “Устройство заряжено”,
 ● если 70-80%, “Необходимо зарядить устройство в течении 6 часов”
 ● если 20-40%, “Поставьте устройство на зарядку”
 ● если 0%, “Устройство полностью разряжено”
 В остальных случаях не выводите ничего. Используйте switch case.
 */

//MARK: - 5 Calculator

class Calculator {
    
    func add(a: Double, b: Double) -> Double {
        a + b
    }
    
    func sub(a: Double, b: Double) -> Double {
        a - b
    }
    
    func mul(a: Double, b: Double) -> Double {
        a * b
    }
    
    func div(a: Double, b: Double) -> Double {
        a / b
    }
}

class CalculatorPro {
    
    func exponention(a: Double, degree b: Double) -> Double {
        pow(a, b)
    }
    
    func residue(a: Int, b: Int) -> Int {
        a % b
    }
}

//MARK: - 5.1* SuperProCalc

class SuperProCalc: CalculatorPro {
    
    func compoundInterestCalc(money: Double, percent: Double, days: Int) -> Double {
        let result = money * exponention(a: (1 + percent/100/365), degree: Double(days))
        print("If you deposited \(money) UAH at \(percent)% for \(days), at the end of term you will receive: \(result) \n")
        return result
    }
}

let calc = SuperProCalc()

calc.compoundInterestCalc(money: 350000, percent: 4.7, days: 273)

//MARK: - 1 Sailor

var sailorNames = [String]()

class Sailor {
    
    let name: String
    
    func introduceMyself() {
        for name in sailorNames {
            print("Hello, my name is \(name)")
        }
    }
    
    init(name: String) {
        self.name = name
        sailorNames.append(self.name)
    }
}

//MARK: - 2 Ship

class Ship {
    
    let name: String
    var sailors: [String]
    
    func introduceAll() {
        print("Welcomes you from the crew which includes:")
        for name in sailors {
            print("Hello, my name is \(name)")
        }
        print("We are from the ship \(name)\n")
    }
    
    init(name: String, sailors: [String]) {
        
        self.name = name
        self.sailors = sailors
    }
}

//MARK: - 4 Titanic Ship/Sailors

class Titanic: Ship {
    
    override func introduceAll() {
        print("Вас приветствует экипаж корабля:")
        for name in titanicSailorNames {
            print(name)
        }
        print("Мы с корабля \(name)\n")
        super.introduceAll()
    }
}

var titanicSailorNames = [String]()

class TitanicSailor: Sailor {
    
    override init(name: String) {
        super.init(name: name)
        titanicSailorNames.append(name)
    }
    
    override func introduceMyself() {
        print("Привет, меня зовут \(name)\n")
    }
}

//MARK: - 3 Initialization of sailors, ships and calls methods

let sailor1 = Sailor(name: "Max")
let sailor2 = Sailor(name: "Abraham")
let sailor3 = Sailor(name: "Moris")
let sailor4 = Sailor(name: "Boris")
let sailor5 = Sailor(name: "Icabod")
let titanicSailor = TitanicSailor(name: "John")
let titanicSailor1 = TitanicSailor(name: "Jacob")

let aurora = Ship(name: "Aurora", sailors: sailorNames)
let titanic = Titanic(name: "Titanic", sailors: titanicSailorNames)

aurora.introduceAll()
titanic.introduceAll()
sailor1.introduceMyself()
titanicSailor.introduceMyself()
titanicSailor1.introduceMyself()

//MARK: - 6 Switch

func chargeStatus(charge: Int){
    
    switch charge {
    case 100: print("Device is charged.")
    case 70...80: print("You need to charge the device for six hours.")
    case 20...70: print("Put the device on charge.")
    case 0 : print("The device is completely discharged.")
    default: print("")
    }
    
}

chargeStatus(charge: 77)
