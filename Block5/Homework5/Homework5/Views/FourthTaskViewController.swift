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
        
        let whiteCircle = addCircleFunc(view: view, color: .white, x: 0, y: 0, size: 2.5)
        let yellowCircle = addCircleFunc(view: whiteCircle, color: .yellow, x: 0, y: 0, size: 1.5)
        let greenCircle = addCircleFunc(view: whiteCircle, color: .green, x: 13, y: 0, size: 1.5)
        let redCircle = addCircleFunc(view: whiteCircle, color: .red, x: 10, y: 0, size: 1.5)
        let blueCircle = addCircleFunc(view: whiteCircle, color: .blue, x:7, y: 0, size: 1.5)
        
        whiteCircle.center = view.center
        
        whiteCircle.bringSubviewToFront(yellowCircle)
        yellowCircle.center = CGPoint(x: whiteCircle.bounds.minX + 66, y: whiteCircle.bounds.maxY - 66)
        greenCircle.center = CGPoint(x: whiteCircle.bounds.maxX - 66, y: whiteCircle.bounds.maxY - 66)
        redCircle.center = CGPoint(x: whiteCircle.bounds.maxX - 66, y: whiteCircle.bounds.minY + 66)
        blueCircle.center = CGPoint(x: whiteCircle.bounds.minX + 66, y: whiteCircle.bounds.minY + 66)
        whiteCircle.clipsToBounds = true
    }
}
