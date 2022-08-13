import UIKit

/*
 ● Создайте 3 dictionary, добавьте в каждый не менее трех элементов:
 ○ String: String - Страна: Столица
 ○ String: Int - Город: Почтовый код
 ○ String: Bool - Имя человека: Студент ли он
 */

var countryCapitals = ["Ukraine" : "Kyiv", "USA" : "Washington", "Germany" : "Berlin"]
var cityPost = ["Odessa" : 65015, "Lviv" : 60412, "Kharkiv" : 51234]
var studentsOrNot = ["Alex" : true, "Moris" : false, "Rebecca" : true]

/*
 ● Создайте еще одну переменную типа Dictionary, в которую сохраните по одному элементу из каждого из
 словарей выше и выведите ее значение в консоль (На желтые warnings и “optional(...)” значение в консоли мы
 пока не обращаем внимания)
 ● Удалите в первых трех словарях по одному элементу
 */

var mixture: [String: Any] = [:]

mixture["Ukraine"] = countryCapitals["Ukraine"]
mixture["Odessa"] = cityPost["Odessa"]
mixture["Alex"] = studentsOrNot["Alex"]

print("City is \(mixture["Ukraine"]!), code: \(mixture["Odessa"]!), student status: \(mixture["Alex"]!)")

countryCapitals["USA"] = nil
cityPost.removeValue(forKey: "Odessa")
studentsOrNot["Moris"] = nil

/*
 ● Создайте переменные:
 ○ Массив содержащий только ключи из последнего Dictionary
 ○ Массив содержащий только значения из последнего Dictionary
 ● Выведите в консоль их значения
 ● Поменяйте местами значение первого и последнего ключа в этом массиве.
 Не забывайте что вы всегда можете создавать дополнительные переменные
 */

var arrayOfKeys = [String](mixture.keys)
var arraOfValues = [Any](mixture.values)

var tmp = arrayOfKeys[2]
arrayOfKeys[2] = arrayOfKeys[0]
arrayOfKeys[0] = tmp

print(arrayOfKeys)


















