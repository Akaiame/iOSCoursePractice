import UIKit
import Darwin

/*
 1. Создайте переменные типа Int “Проходной бал” и “Мой бал” которые
 будут содержать значения от 1 до 100. Создайте switch else, который будет
 проверять, является ли мой балл выше проходного или ниже. В одном
 случае пусть выводиться сообщение “К сожалению ваш балл ниже
 проходного”, во втором случае “Поздравляем! Вы поступили!”
 
 2. Попробуйте реализовать все то же самое, с помощью guard else
 */

//MARK: - 1

let passingScore = 60
let score = 59

switch score {
case 1...60: print("Ur score smaller that passing score")
case 60...100: print("Welcome to high education")
default: print("Where is ur exam?")
}

//MARK: - 2

func education(score: Int){
    guard score >= passingScore else {
        print("\nfail\n")
        return
    }
}

education(score: 44)

/*
 3. Создайте switch case, который будет проверять переменную типа Int, с возможными значениями от 1 до 7. В
 зависимости от ее значения выведите в консоль день недели

 4. Попрактикуйтесь с использованием выражений fallthrough и where, добавив их в switch case из прошлого задания
 */

//MARK: - 3/4

var day = Int.random(in: 1...7)
var weatherIsRainy = true

switch day {
case 1 where weatherIsRainy: print("Mon")
case 2: print("Tue")
case 3: print("Wed")
    fallthrough
case 4: print("Thu")
case 5: print("Fri")
case 6: print("Sat")
case 7: print("Sun")
default: print("Out of range")
}
