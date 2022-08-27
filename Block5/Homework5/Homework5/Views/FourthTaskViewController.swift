//
//  FourthTaskViewController.swift
//  Homework5
//
//  Created by Дмитрий Ильичёв on 21.08.2022.
//

import UIKit

class FourthTaskViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        
        let whiteCircle = addCircleFunc(view: view, color: .white, x: 0, y: 0)
        let yellowCircle = addCircleFunc(view: whiteCircle, color: .yellow, x: 0, y: 0)
        let greenCircle = addCircleFunc(view: whiteCircle, color: .green, x: 13, y: 0)
        let redCircle = addCircleFunc(view: whiteCircle, color: .red, x: 10, y: 0)
        let blueCircle = addCircleFunc(view: whiteCircle, color: .blue, x:7, y: 0)
        
        whiteCircle.center = view.center
        whiteCircle.bringSubviewToFront(yellowCircle)
//        yellowCircle.center = whiteCircle.center
//        yellowCircle.center.y = whiteCircle.center.y
//        greenCircle.center.x = whiteCircle.frame.minX
//        greenCircle.center.y = whiteCircle.frame.minY
//        redCircle.center.x = whiteCircle.frame.maxX
//        redCircle.center.y = whiteCircle.frame.minY
//        blueCircle.center.x = whiteCircle.frame.maxX
//        blueCircle.center.y = whiteCircle.frame.minY
    }
}
