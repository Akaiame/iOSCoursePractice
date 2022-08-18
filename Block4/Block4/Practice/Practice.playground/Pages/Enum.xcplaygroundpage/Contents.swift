import UIKit
import Darwin

/*
 ● В презентации и в playgrounds были приведены варианты перечислений.
 Ключевая идея - каждый case может стать значением enum. Если
 значениями являются дни недели, то enum должен называться “День недели”.
 Попробуйте придумать два своих перечисления. Каждый из которых
 должен соответствовать ключевой идее описанной выше
 ● В первом из ваших enum добавьте RawValue. Укажите его только
 для части case и протестируйте, создав несколько экземпляров этого enum
 ● Во второй enum добавьте функцию, в которой будет switch. Пусть
 функция возвращает какое-то значение в зависимости от значения enum
 ● Создайте enum с ассоциативными значениями для каждого из его case.
 Протестируйте его, добавив функцию, которая принимает значение enum
 и возвращаемое значение зависит от принятого, по аналогии с примером из Playgrounds
 */

enum FastFoodMenu: Double {
    case cocaCola = 3.20
    case fries = 4.50
    case camburger = 8.0
}

enum HarryPotterSpells {
    case sectumsempra
    case accio
    case obliviate
    case rictusempra
    case riddikulus
    
    func currentSpell() -> String {
        switch self {
        case .sectumsempra: return "sectumsempra"
        case .accio: return "accio"
        case .obliviate: return "obliviate"
        case .riddikulus: return "riddikulus"
        case .rictusempra: return "rictusempra"
        }
    }
}

enum ComputerComponents {
    case motherboard(company: Company)
    case cpu(company: Company)
    case gpu(company: Company, manufacturer: Company)
    case ram(company: Company)
    case ssd(company: Company)
    case hdd(company: Company)
    case power(company: Company)
    
    enum Company {
        case intel
        case hp
        case msi
        case asus
        case gigabyte
        case amd
        case nvidia
        case samsung
        case kingstom
        case acer
    }
        
    func getInfo() -> String {
        switch self {
        case .motherboard(company: let company):
            return "\(company)"
        case .cpu(company: let company):
            return "\(company)"
        case .gpu(company: let company, manufacturer: let manufacturer):
            return "company is \(company), manufacturer is \(manufacturer)"
        case .ram(company: let company):
            return "\(company)"
        case .ssd(company: let company):
            return "\(company)"
        case .hdd(company: let company):
            return "\(company)"
        case .power(company: let company):
            return "\(company)"
        }
    }
    
}

var comp1: ComputerComponents = .cpu(company: .intel)
var comp2: ComputerComponents = .gpu(company: .nvidia, manufacturer: .gigabyte)
comp2.getInfo()
var menuItem1: FastFoodMenu = .cocaCola
var menuItem2: FastFoodMenu = .fries
var spell1: HarryPotterSpells = .rictusempra

spell1.currentSpell()
