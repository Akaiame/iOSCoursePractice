import UIKit

/*
 ● Создайте массив на 10 элементов с числами (возраст ваших знакомых).
 ● Добавьте цикл for in который пройдется по этим элементам и выведет в
 консоль сообщение “Мне *** лет”
 ● После чего добавьте проверку, младше 18 лет или старше. В первом
 случае выводим сообщение: “Ребенок”, во втором: “Взрослый”.
 ● Для всех, кто младше 18 лет, измените сообщение “Ребенок” на “Я уже
 отпраздновал: ”. После чего запустите вложенный цикл, который
 пройдется по количеству лет человека и выведет на каждой итерации
 *** лет. Например: “Я уже отпраздновал: ... 5 лет ⏎ 6 лет ⏎ 7 лет ...”
 */

let weekDays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]

for (index, day) in weekDays.enumerated() where index < 3 {
    print("Day number \(index + 1): \(day)")
}

print()

var myFriendsAges = [18, 21, 25, 15, 16, 26, 17, 28, 22, 36]

for age in myFriendsAges {
    print("Im \(age) years old.")
    
    if age > 18 {
        print("Adult.\n")

    } else if age < 18 {
        print("Child.")
        print("I already celebrated:")
        for i in 1...age {
            
            print("\(i) year")
        }
    } else {
        
        print("Can drink :)\n")
    }
    
}
