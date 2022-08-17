//
//  TractorDriver.swift
//  Homework3
//
//  Created by Дмитрий Ильичёв on 13.08.2022.
//

import Foundation

struct TractorDriver: Employee, DriveTractor {
    var isTractorAvailable: Bool
    let name: String
    var speciality: String?
    var age: Int

    func startWork() {
        guard let speciality = speciality else {
            return 
        }

        print("\(name) \(speciality) - started its work.")
    }
    func driveTheTractor() {
        print("Use a tractor to work.")
    }
    func lunchBreak(){
        print("Lunch time!")
    }
    
    func endWork() {
        print("\(name) - finished his work.")
    }
}
