import UIKit

/*
 1. Напишите функцию принимающую два параметра: имя и фамилия.
 Пусть она возвращает полное имя человека
 2. Напишите функцию, которая принимает число и возвращает его квадратный корень
 3. Напишите функцию, которая принимает число и возвращает его во второй степени
 4 Напишите функцию, принимающую два параметра. Пусть она возвращает сумму квадратного корня первого
 параметра и второго параметра в квадрате. Используйте функции, что вы написали выше.
 5. Создайте цикл от 1 до 10, внутри которого создайте вложенный цикл от 1 до 10. На каждой итерации
 вложенного цикла вызовите функцию из прошлого задания. В качестве первого параметра передавайте номер
 итерации внешнего цикла, в качестве второго параметра передавайте номер итерации внутреннего цикла.
 */

//MARK: - 1

func personInfo(firstName: String, lastName: String) -> String {
    let fullName = firstName + " " + lastName
    return fullName
}

let person = personInfo(firstName: "Dmitry", lastName: "Ilichov")

print(person)

//MARK: - 2

func findSquare(number: Double) -> Double {
    let result = sqrt(number)
    return result
}

let sqare = findSquare(number: 16)

print(sqare)

//MARK: - 3

func secondPower(number: Double) -> Double {
    number * number
}

let raisingFive = secondPower(number: 5)

print(raisingFive)

//MARK: - 4

func calculations(num1: Double, num2: Double) -> Double {
    findSquare(number: num1) + secondPower(number: num2)
}

let myCalculation = calculations(num1: 16, num2: 5)

print(myCalculation)

//MARK: - 5

for i in 1...10 {
    for j in 1...10 {
        print(calculations(num1: Double(i), num2: Double(j)))
    }
}

/*
 6. Напишите функцию, которая принимает несколько параметров, имя человека, его профессию и количество
 дней отпуска. Пусть функция выводит фразу “Меня зовут ***, я работаю *** и у меня есть *** дней
 отпуска”.
 7. Модифицируйте функцию, добавив значения по умолчанию для профессии и количества дней отпуска.
 Попробуйте вызвать функцию три раза, каждый раз с разным количеством параметров.
 8. Добавьте пустую маску для первого параметра этой функции.
 9. Напишите три функции sum:
 ○ первая принимает два String параметра и выводит строку состоящую из суммы параметров
 ○ вторая принимает два Float параметра и возвращает их сумму
 ○ третья принимает два Int параметра и тоже возвращает их сумму
 10. Создайте по две переменные каждого типа данных: Int, String и Float и
 протестируйте все три функции.
 11. Напишите функцию, принимающую имя человека и замыкание, которое
 принимает String значение и ничего не возвращает.
 12. Вызовите в функции замыкание которое примет имя человека, если в нем есть символы, или строку
 “Bob”, если имя было пустым. Попробуйте вызвать функцию с разными параметрами.
 */

//MARK: - 6-8

func getVacation(_ name: String, profession work: String = "doctor", vacation days: Int = 5) {
    print("My name is \(name), Im a \(work), i have \(days) days of vacation.")
}

getVacation("Dmitry", profession: "programmer")
getVacation("Bob")
getVacation("Nency", profession: "QA engineer", vacation: 360)

//MARK: - 9

func sum1(val1: String, val2: String) {
    print(val1 + " " + val2)
}

func sum2 (val1: Float, val2: Float) -> Float {
    val1 + val2
}

func sum3(val1: Int, val2: Int) -> Int {
    val1 + val2
}

//MARK: - 10

let someInt1 = 4
let someInt2 = 34
let someFloat1: Float = 5.215
let someFloat2: Float = 25.2451
let someString1 = "Boris"
let someString2 = "Hokage"

sum1(val1: someString1, val2: someString2)
print(sum2(val1: someFloat1, val2: someFloat2))
print(sum3(val1: someInt1, val2: someInt2))

//MARK: - 11/12

//var arr = [2,4,5,6]
//
//func myMap<T>(for array: [Int], _ transform: (Int) -> T) -> [T] {
//    var result: [T] = []
//    for element in array {
//        result.append(transform(element))
//    }
//    return result
//}
//
//let test = myMap(for: arr){String($0 * $0)}
//print(test)

func getName(name: String = "Bob", closure: (String) -> ()) {
    closure(name)
}

getName(name: "Dima") { name in
    print(name)
}

getName{ name in
    print(name)
}

getName{print($0)}
