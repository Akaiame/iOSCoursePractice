//
//  Employee.swift
//  Homework3
//
//  Created by Дмитрий Ильичёв on 13.08.2022.
//

import Foundation

protocol Employee {
    var name: String { get }
    var speciality: String? { get set }
    var age: Int { get set }
    
    func startWork()
    func lunchBreak()
    func endWork()
}

