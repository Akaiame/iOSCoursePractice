//
//  SecondTaskViewController.swift
//  Homework5
//
//  Created by Дмитрий Ильичёв on 21.08.2022.
//

import UIKit

class SecondTaskViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        
        let grayCircle = addCircleFunc(view: view, color: .gray, x: 0, y: 0)
        let blackCircle = addCircleFunc(view: view, color: .black, x: 0, y: 0)
        let whiteCircle = addCircleFunc(view: view, color: .white, x: 0, y: 0)
        
        grayCircle.center.x = view.center.x
        grayCircle.center.y = view.frame.minY + view.frame.height / 4
        blackCircle.center = view.center
        whiteCircle.center.x = view.center.x
        whiteCircle.center.y = view.frame.maxY - view.frame.height / 4
    
    }
}
