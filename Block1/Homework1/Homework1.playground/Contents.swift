import UIKit

/*
 Создайте массив с десятью случайными числами, из которых пять меньше
 нуля и пять больше нуля.
 1. Замените все отрицательные числа на 0 и выведите массив в консоль.
 2. Найдите минимальный и максимальный элемент в массиве и выведите его в консоль.
 3. Найдите сумму элементов массива чисел и выведите ее в консоль.
 4. Создайте массив с названиями всех месяцев, типа String.
 Затем создайте словарь и с помощью цикла задайте ему значения на основании
 массива: где в качестве ключей будут выступать цифры (индексы), а в качестве значений
 - элементы массива.
 5. Создайте словарь:
 var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
 Поменяйте местами значения по ключам “first” и “fourth”. Выведите в консоль итоговый
 словарь.
 6. Создайте пустой словарь calendar, так же вам понадобиться массив с месяцами из
 четвертого задания.
 С помощью цикла от 1970 до 2022 задайте значения для словаря. В
 качестве ключа пусть будет год, а значение это массив с месяцами.
 7. С помощью другого цикла добавьте в calendar на каждый год по
 одному месяцу с вашим названием, чтобы в каждом году вышло 13 месяцев.
 7.1 На основании словаря, который у вас получился в седьмом задании,
 давайте создадим новый словарь, который будет включать в себя также и даты,
 a именно массив с числами от 1 до 31:
 ● Создайте массив с числами от 1 до 31 с помощью цикла.
 ● Создайте новый словарь calendarPro, где в качестве ключей будут года, в
 качестве значений вложенные словари. В которых в качестве ключей названия
 месяцев, а в качестве значений массив с днями созданный выше.
 ● Выведите в консоль 1 сентября 2019 года.
 PS: Для заполнения calendarPro используйте только созданный массив с
 числами, и словарь с месяцами, и никаких других данных
 8. Создайте 2 переменные с числами. Если значения равны, выведите в
 консоль их сумму умноженную на 3, если нет, выведите в консоль их сумму в случае если
 она четное число.
 9. Создайте строку, в которой будет храниться любая фраза из трех или
 более слов c восклицательным знаком в конце. Выведите в консоль первое и
 последнее слово из этой строки (без восклицательного знака).
 В этом задании необходимо найти способ доставать слова из вашей строки,
 погуглите методы с помощью которых это возможно реализовать. Задание
 сложнее чем кажется :)
 */

//MARK: - Task 1 Replacement of negative numbers:

var numbers = [-3, 2, 7, -14, 26, 10, -6, -11, 15, 15]

for (index, number) in numbers.enumerated() where number < 0 {
    
    numbers[index] = 0
}

print(numbers)

// Function practice

func changeNegative(array: inout [Int]) -> [Int] {
    
    for (index, number) in array.enumerated() where number < 0 {
        array[index] = 0
    }
    return array
}

changeNegative(array: &numbers)

print(numbers)

//MARK: - Task 2 Search for maximum and minimum value:

func maxMin(array: [Int]) -> (Int, Int) {
    
    var maxValue = array[0]
    var minValue = array[0]
    
    for (index,_) in array.enumerated() {
        if array[index] >= maxValue {
            maxValue = array[index]
        } else if array[index] <= minValue {
            minValue = array[index]
        }
    }
    return (maxValue, minValue)
}

maxMin(array: numbers)

print("Max and min values of array elements: \(maxMin(array: numbers))")

//MARK: - Task 3 Summ of all array elements:

func summation(array: [Int]) -> Int {
    
    var sum = 0
    
    for (index, _) in array.enumerated() {
        sum += array[index]
    }
    return sum
}

print("Sum of array elements is \(summation(array: numbers))")

//MARK: - Task 4 Months dictionary

let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
var monthDict : [Int: String] = [:]

for (index, _) in months.enumerated() {
    monthDict[index + 1] = months[index]
}

//MARK: - Task 5 Swap values

var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
var tmp = dictionary["first"]

dictionary["first"] = dictionary["fourth"]
dictionary["fourth"] = tmp

print(dictionary)

//MARK: - Task 6 Calendar

var calendar = [Int: [String]]()

for year in 1970...2022 {
    calendar.updateValue(months, forKey: year)
}

//MARK: - Task 7 Calendar

let myMonths = ["Nightvember", "Lightvember", "Catsburger", "PitterPotter", "Adventure"]
let myTestMonth = "New Month"

for key in calendar.keys {
//    let random = Int.random(in: 0...4)
    calendar[key]?.append(myTestMonth)
}

print(calendar)

//MARK: - Task 7.1 *

var calendarPro = [Int: [String:[Int]]]()
var simpleCalendar: [String: [Int]] = [:]
var days = [Int]()

for day in 1...31 {
    days.append(day)
}

for month in months {
    simpleCalendar[month] = days
}

for year in 1972...2022 {
    calendarPro[year] = simpleCalendar
}

print(calendarPro[2019]!["September"]![0])

//MARK: - Task 8 If Statment

let firstNum = 13
let secondNum = 7
var result: Int

if firstNum == secondNum {
    result = (firstNum + secondNum) * 3
} else {
    result = firstNum + secondNum
    if result % 2 == 0 {
        print(result)
    } else {
        print("gg")
    }
}

//MARK: - Task 9 String

var str = "Dogs hate cats!"
let dropStr = str.dropLast()
var arrayStr = dropStr.split(separator: " ")

print("\(arrayStr.first!) \(arrayStr.last!)")


