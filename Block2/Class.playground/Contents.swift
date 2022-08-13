import UIKit

/*
 1. Создайте класс Phone, который содержит переменные number,
 model и weight
 
 2. Создайте 2 экземпляра этого класса и выведите в консоль значения
 их свойств
 
 3. Добавьте в класс Phone методы:
 ○ receiveCall – имеет один параметр – имя звонящего. Выводит на консоль сообщение “Звонит \(name)”
 ○ getNumber – возвращает номер телефона
 
 4. Добавьте экземпляры класса в массив и вызовите эти методы для каждого из них с помощью цикла
 
 5. Добавьте в класс метод receiveCall, который принимает два параметра - имя звонящего и номер телефона звонящего.
 Вызовите этот метод для каждого экземпляра
 
 6. Создайте метод sendMessage. Он будет принимать на вход номера телефонов, которым будет отправлено сообщение.
 Метод выводит в консоль номера этих телефонов.
 
 7. Добавьте инициализатор в класс Phone, который принимает на вход три параметра для инициализации переменных
 класса - number, model и weight
 
 8. Добавьте инициализатор, который принимает на вход два параметра для инициализации переменных класса - number,
 model.
 
 9. Добавьте инициализатор без параметров.
 
 10. Вызовите из инициализатора с двумя параметрами конструктор с тремя.
 */

class Phone {
    
    var number : Int
    let model: String
    let weight: Float
    
    init(number: Int, model: String, weight: Float) {
        self.number = number
        self.model = model
        self.weight = weight
    }
    
    convenience init() {
        self.init(number: 0, model: "", weight: 0)

    }
    
    func receiveCall(name: String, number: Int) {
        print("\(name) calling u now! \(number)")
    }
    
    func getNumber() -> Int {
        return self.number
    }
    
    func sendMessage(numbers: [Int]) {
            print("\(numbers)")
    }
}

let phone1 = Phone(number: 995642714, model: "Samsung", weight: 99.3)
let phone2 = Phone(number: 993214516, model: "iPhone X", weight: 100.2)
let phone3 = Phone(number: 931531611, model: "XIOMI", weight: 122.2)
let phone4 = Phone(number: 635316123, model: "iPhone 11", weight: 80.24)
var phonesNumbers = [phone1.number, phone2.number, phone3.number, phone4.number]
    
var phonesArray = [phone1, phone2, phone3, phone4]

for (i,j) in phonesArray.enumerated() {
    phonesArray[i].receiveCall(name: j.model, number: j.number)
}

phone1.sendMessage(numbers: phonesNumbers)

/*
 ● Создайте класс Calculator, который не содержит свойств, но содержит методы:
 ○ Прибавить - принимает два числа и возвращает их сумму
 ○ Вычесть - принимает два числа и возвращает их разницу
 ○ Умножить - принимает два числа и возвращает результат их умножения
 ○ Разделить - принимает два числа и возвращает результат их деления
 ○ Остаток от деления - принимает два числа и возвращает остаток от деления первого на второе
 
 ● Создайте класс SuperCalculator. Пусть он будет наследоваться от Calculator и содержать
 дополнительные методы:
 ○ возвести в степень - принимает два параметра: число и степень в которую его нужно
 возвести. Возвращает результат возведения числа в степень
 ○ получить процент - принимает два параметра: число и процент который мы хотим
 получить. Например число 50 и процент 10. Функция возвращает 5, так как 5 это 10% от
 50-ти
 
 ● Переопределите функции описанные в родительском классе, добавьте в каждую из них
 команду print(“I am SuperCalculator”). Протестируйте эти методы, посмотрите что будет,
 если не использовать вызов метода родителя через команду super
 
 ● Создайте экземпляр класса SuperCalculator и протестируйте все методы со своими
 значениями, выведя результаты в консоль через команду: print(SuperCalculator().myFunc())
 */

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

    func residue(a: Int, b: Int) -> Int {
        a % b
    }

}

class SuperCalc: Calculator {

    func exponention(a: Double, degree b: Double) -> Double {
        pow(a, b)
    }

    func percentage(value: Double, percentage: Double) -> Double {
        (value * percentage) / 100
    }

    override func add(a: Double, b: Double) -> Double {

        let result = super.add(a: a, b: b)
        print ("Im super Calculator!")
        return result
    }
    override func sub(a: Double, b: Double) -> Double {

        let result = super.sub(a: a, b: b)
        print("Im super Calculator!")
        return result
    }
}

let ex1 = SuperCalc()

ex1.sub(a: 2, b: 4)
print(ex1.percentage(value: 100, percentage: 50))

