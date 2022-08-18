import UIKit

/*
 Попробуем создать персонажей для игры о диком западе.
 ● Создайте протокол Movable, в котором будет метод run(), протокол Fightable с
 методом fight()
 ● Создайте протокол Hero, который включает оба протокола и свойство name
 ● Создайте не менее двух персонажей для игры на каждый протокол из трех описанных выше. Например struct Farmer:
 Movable { ... }, struct Butcher: Fightable и т д. Реализуйте методы в зависимости от структуры которую вы
 используете. В нашем примере в реализации метода run() у структуры Farmer мы можем вывести
 print(“Farmer: Run”), в методе fight() у Butcher можем вывести print(“Butcher: fight”) У нас должно получиться 6
 типов, которые соответствуют трем протоколам.
 */

protocol Movable {
    func run()
}

protocol Fightble {
    func fight()
}

protocol Hero: Movable, Fightble {
    var name: String { get set }
}

struct Farmer: Movable {
    
    func run() {
        print("The farmer moves")
    }
}

struct Priest: Movable {
    
    func run() {
        print("The priest moves")
    }
}

struct Thief: Fightble {
    
    func fight() {
        print("Blow from the thief")
    }
}

struct Bartender: Fightble {
    
    func fight() {
        print("Blow from the bartender")
    }
}

struct Sheriff: Hero {
    
    var name: String
    
    func run() {
        print("The sheriff moves")
    }
    
    func fight() {
        print("Blow from the sheriff")
    }
}

struct Nun: Hero {
    
    var name: String
    
    func run() {
        print("The nun moves")
    }
    
    func fight() {
        print("Blow from the nun \(name)")
    }
}

/*
 ● Создайте класс Tavern (таверна). У нее должен быть массив всех юнитов в таверне, которые умеют сражаться: var
 fighters: [Fightable] = [], и аналогичный массив movers, принимающий объекты что могут двигаться.
 Также в таверне будет метод enterTavern(hero: Hero)
 ● В реализации этого метода будет:
 ○ вызываться метод fight у Hero
 ○ выполняться цикл for по массиву movers, у каждого элемента будет вызываться метод run
 ○ аналогично с предыдущим пунктом, только у fighters метод fight()
 */

class Tavern {
    
    var fighters = [Fightble]()
    var movers = [Movable]()
    
    func enterTavern(hero: Hero) {
        
        hero.fight()
        for mover in movers {
            mover.run()
        }
        
        for fighter in fighters {
            fighter.fight()
        }
    }
}

/*
 ● Время протестировать все созданные типы и протоколы. Создайте
 экземпляры всех типов: по 2 персонажа для Movable, Fightable и Hero.
 Пример: var alice = Fermer() ... Создайте экземпляр таверны.
 ● Присвойте свойствам таверны значения: в массив movers передайте
 экземпляры что могут двигаться, в массив fighters тех кто могут сражаться
 ● Обратитесь к таверне и вызовите метод enterTavern для двух экземпляров
 соответствующих протоколу Hero
 ● В итоге в консоли должно пройти текстовое сражение, вывод имени героя, посетившего таверну и начавшего сражение,
 после имена тех кто разбегаются, после имена тех кто сражается
 */

let farmer = Farmer()
let priest = Priest()
let thief = Thief()
let nun = Nun(name: "Nency")
let bartender = Bartender()
let sheriff = Sheriff(name: "Bob")
let oldTavern = Tavern()

oldTavern.movers.append(farmer)
oldTavern.movers.append(priest)
oldTavern.fighters.append(bartender)
oldTavern.fighters.append(thief)
oldTavern.fighters.append(sheriff)
oldTavern.enterTavern(hero: nun)

