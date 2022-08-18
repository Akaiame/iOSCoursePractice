import UIKit

/*
 Создаем персонажей для игры:
 ● Создайте enum VehicleType: electric / nonElectric
 ● Создайте протокол Vehicle, который будет включать свойства: weight: Float,
 speed:
 Float, type: VehicleType, canFly: Bool. Все перечисленные свойства можно
 пометить как { get }. И функцию prepare()
 
 ● Расширьте протокол Vehicle с реализацией функции prepare: если Vehicle
 electric, выводим в консоль сообщение "Charge", если nonElectric, выводим
 сообщение "Refuel". Так же задайте значение false для свойства canFly
 
 ● Создайте протокол FlyableVehicle c функцией getMaxHight -> Float
 ● Создайте протокол Vehicle для объектов реализующих FlyableVehicle, добавьте
 по умолчанию для canFly значение true, type - nonElectric. Реализуйте функцию
 getMaxHight. Если это electric объект, пусть он возвращает weight + speed,
 если нет, то weight * speed
 
 ● Создайте структуры Car, ElectricCar, AirPlane и создайте их экземпляры.
 Внутри структур задавать значения по умолчанию не обязательно, инициализатор
 будет присутствовать у структур по умолчанию
 
 ● Выведите в консоль свойства у Car и electricalCar: type canFly. У airPlane
 выведите свойство canFly и вызовите функцию getMaxHight
 
 ● Создайте структуру ElectricalAirplane, ее экземпляр c теми же данными
 которые вы использовали для создания обычного самолета. Выведите в консоль
 значение, которое возвращает функция getMaxHight()
 */

//MARK: - protocols

protocol Vehicle {
    var weight: Float { get }
    var speed: Float { get }
    var type: VehicleType { get }
    var canFly: Bool { get }
    
    func prepare() -> String
}

protocol FlyableVehicle {
    
    func getMaxHight() -> Float
}

//MARK: - extensions

extension Vehicle where Self: FlyableVehicle {
    var canFly: Bool {
        return true
    }
    var type: VehicleType {
        return .nonElectric
    }
    
    func getMaxHight() -> Float {
        switch type {
        case .nonElectric: return weight * speed
        case .electric: return weight + speed
        }
    }
}

extension Vehicle {
    var canFly: Bool {
        return false
    }
    
    func prepare() -> String {
        type == .electric ? "Charge" : "Refuel"
    }
}

//MARK: - enum

enum VehicleType {
    case electric
    case nonElectric
}

//MARK: - structs

struct Car: Vehicle {
    var weight: Float
    var speed: Float
    var type: VehicleType
}

struct ElectricCar: Vehicle {
    var weight: Float
    var speed: Float
    var type: VehicleType
}

struct AirPlane: Vehicle, FlyableVehicle {
    var weight: Float
    var speed: Float
}

struct ElectricalAirplane: Vehicle, FlyableVehicle {
    var weight: Float
    var speed: Float
    var type: VehicleType
}

//MARK: - instances

let myCar = Car(weight: 120, speed: 120, type: .nonElectric)
let friendCar = ElectricCar(weight: 100, speed: 140, type: .electric)
let myPlane = AirPlane(weight: 223, speed: 500)
let myElectricalPlane = ElectricalAirplane(weight: 214, speed: 550, type: .electric)

print("\(myCar.type) Type, Fly:\(myCar.canFly)")
print("\(friendCar.type) Type, Fly:\(friendCar.canFly)")
print(myPlane.type)
print(myPlane.getMaxHight())
print(myElectricalPlane.getMaxHight())
print(myCar.prepare())


