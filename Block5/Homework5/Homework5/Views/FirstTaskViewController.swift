//
//  FirstTaskViewController.swift
//  Homework5
//
//  Created by Дмитрий Ильичёв on 21.08.2022.
//

import UIKit

class FirstTaskViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        let darkGrayCircle = addCircleFunc(view: view, color: .darkGray, x: 50, y: 50)
        darkGrayCircle.center = view.center
    }
}
