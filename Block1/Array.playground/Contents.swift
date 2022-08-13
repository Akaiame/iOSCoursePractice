import UIKit

/*
 ● Создайте массив включающий имена 5 студентов
 ● Создайте переменные newStudent1, newStudent2 и задайте им имена
 ● Добавьте новых студентов в массив: первого в конец списка, второго в
 начало списка. После этого никаких операций с newStudent1 и newStudent2
 не требуется, продолжаем работу с массивами
 ● Удалите двоих студентов из массива: предпоследнего и первого
 */

var studentNames : [String] = ["Alex", "John", "Selena", "Victoria", "Boris"]
let newStudent1 = "Harry"
let newStudent2 = "Alison"

studentNames.append(newStudent1)
studentNames.insert(newStudent2, at: 0)
studentNames.remove(at: 5)
studentNames.removeFirst()

/*
 ● Создайте еще один массив с двумя именами
 ● Создайте массив group, который состоит из двух предыдущих массивов
 ● Через команду print() выведите имена студентов:
 ○ первого и последнего
 ○ второго третего
 ● Выведите в консоль сообщения:
 ○ В массиве содержится *** элементов
 ○ Является ли массив пустым: *** (выведите bool значение)
 ● Создайте массив “newGroup”, который содержит всех учеников из group
 ● Очистите массив group
 */

let newStudents = ["Moris", "Jake"]
var group : [String] = []

group = studentNames + newStudents

print("The name of the first student is \(group.first!), the name of the last student is \(group.last!)")
print("The name of the second student is \(group[1]), the name of the third student is \(group[2])")
print("The array contains \(group.count) elements.")
print("The array group is empty? - \(group.isEmpty).")

var newGroup : [String] = []

newGroup.append(contentsOf: group)
group.removeAll()

print("The array group is empty? - \(group.isEmpty)")

