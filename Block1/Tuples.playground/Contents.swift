import UIKit

/*
 Создайте переменные типов Int, String, Float и задайте в них цифровые значения
 */

let someInt : Int = 15
let someString : String = "13"
let someFloat : Float = 31.321
let someDouble = 3.14
let sum: Double

/*
 Создайте переменную “sum” типа Double, в которой будет содержаться сумма всех предыдущих переменных. Используйте приведение типов
 Если компилятор просит использовать “!” (Force unwrap), поставьте этот знак
 после приведения типа, в следующих уроках мы будем разбирать эту тему
 */

sum = Double(someInt) + Double(someString)! + Double(someFloat) + someDouble
print(sum)

/*
 Создайте по одному Typealias, которые соответствуют типам: String, Int, Float
 ● Создайте три именованных Tuple с данными:
 ○ Фильм - Название фильма и год его выпуска
 ○ Смартфон - Название смартфона и его цена
 ○ Страна - Название страны и ее столица
 ● Все типы внутри tuple замените на typalias
 ● Выведите с помощью команды print:
 ○ Название фильма, Название телефона, Название страны
 ○ Потом пустой print()
 ○ Год выпуска фильма, цена телефона, столица страны
 */

typealias Name = String
typealias EUR = Double
typealias Year = Int

let film: (name: Name, year: Year) = ("Pirates of Caribbean: Dead Men Tell No Tales", 2017)
let smartPhome: (name: Name, price: EUR) = ("iPhome 10", 1245)
let country: (name: Name, capital: Name) = ("China", "Pekin")

print("\nFilm: \(film.name), Phone: \(smartPhome.name), Country: \(country.name)")
print("Year: \(film.year), Price: \(smartPhome.price), Capital: \(country.capital)")
