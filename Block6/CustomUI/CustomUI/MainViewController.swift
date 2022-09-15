//
//  ViewController.swift
//  CustomUI
//
//  Created by Дмитрий Ильичёв on 12.09.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var infoView: UIView!
    let gradiant = CAGradientLayer()
    
   
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradiant.frame = infoView.bounds
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        
        self.view.backgroundColor = #colorLiteral(red: 0.1176470588, green: 0.1176470588, blue: 0.1176470588, alpha: 1)
        let firstColor = #colorLiteral(red: 0.0431372549, green: 0.4509803922, blue: 0.3921568627, alpha: 1).cgColor
        let secondColor = #colorLiteral(red: 0.05098039216, green: 0.6117647059, blue: 0.3411764706, alpha: 1).cgColor
        
        gradiant.colors = [firstColor, secondColor]
        gradiant.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradiant.endPoint = CGPoint(x: 1.0, y: 0.0)
        infoView.layer.insertSublayer(gradiant, at: 0)
    }
}

