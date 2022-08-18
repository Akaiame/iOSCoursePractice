//
//  Farm.swift
//  Homework3
//
//  Created by Дмитрий Ильичёв on 13.08.2022.
//

import Foundation

struct Farm {
    var healers = [HealAnimals]()
    var tractorDrivers = [DriveTractor]()
    var employee = [Employee]()
    
    func startWorkDay() {
        
        for employee in employee {
            employee.startWork()
        }
    }
    
    func heal(animalName: String) {
        for healer in healers {
            healer.healTheAnimal()
        }
    }
    
    func managerRequest() {
        self.startWorkDay()
    }
}
