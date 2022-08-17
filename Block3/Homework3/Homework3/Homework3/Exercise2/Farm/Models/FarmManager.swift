//
//  FarmManager.swift
//  Homework3
//
//  Created by Дмитрий Ильичёв on 13.08.2022.
//

import Foundation

struct FarmManager: Employee {
    let name: String
    var speciality: String?
    var age: Int
    
    func giveInstructions() {
        print("Give instructions to employee")
    }
    
    func getSpecialityFromEmployee() -> String? {
        return speciality
    }
    
    func lunchBreak(){
        print("Lunch time!")
    }
    
    func endWork() {
        print("\(name) - finished his work.")
    }
}
