//
//  DriveTractor.swift
//  Homework3
//
//  Created by Дмитрий Ильичёв on 13.08.2022.
//

import Foundation

protocol DriveTractor {
    var isTractorAvailable: Bool { get set }
      
    func startTheTractor()
    func driveTheTractor()
    func turnOffTheTractor()
    
}
