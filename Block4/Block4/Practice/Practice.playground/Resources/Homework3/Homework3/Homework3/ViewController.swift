//
//  ViewController.swift
//  Homework3
//
//  Created by Дмитрий Ильичёв on 13.08.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let farmManager = FarmManager(name: "Dmitry", speciality: "Manager", age: 26)
        let veterinarian = Veterinarian(name: "Alice", speciality: "Veterinarian", age: 44)
        let tractorDriver = TractorDriver(isTractorAvailable: true, name: "Bob", speciality: "Tractor Driver", age: 30)
        
        var farm = Farm()
        farm.employee.append(farmManager)
        farm.employee.append(tractorDriver)
        farm.employee.append(veterinarian)
        
        farm.startWorkDay()
        if tractorDriver.speciality != nil {
            print(tractorDriver.speciality!)
        }
        farm.managerRequest()
    }
    
}

