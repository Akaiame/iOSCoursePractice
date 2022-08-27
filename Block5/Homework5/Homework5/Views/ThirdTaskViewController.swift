//
//  ThirdTaskViewController.swift
//  Homework5
//
//  Created by Дмитрий Ильичёв on 21.08.2022.
//

import UIKit

class ThirdTaskViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        
        let redCircle = addCircleFunc(view: view, color: .red, x: 0, y: 0)
        let yellowCircle = addCircleFunc(view: view, color: .yellow, x: 0, y: 0)
        let whiteCircle = addCircleFunc(view: view, color: .white, x: 0, y: 0)
        
        redCircle.center.x = view.center.x + view.frame.width / 3
        redCircle.center.y = view.frame.minY + view.frame.height / 3
        yellowCircle.center = view.center
        yellowCircle.alpha = 0.5
        whiteCircle.center.x = view.center.x - view.frame.width / 3
        whiteCircle.center.y = view.frame.maxY - view.frame.height / 3
    
        view.bringSubviewToFront(yellowCircle)
    }
}
