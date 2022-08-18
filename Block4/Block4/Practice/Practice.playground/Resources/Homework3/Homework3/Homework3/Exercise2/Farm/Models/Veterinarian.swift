//
//  Veterinarian.swift
//  Homework3
//
//  Created by Дмитрий Ильичёв on 13.08.2022.
//

import Foundation

struct Veterinarian: Employee, HealAnimals {
    let name: String
    var speciality: String?
    var age: Int
    
    func lunchBreak() {
        print("\(name) - started its work.")
    }
    
    func endWork() {
        print("\(name) - started its work.")
    }
    
    func healTheAnimal() {
        print("\(name) - started its work.")
    }
}
