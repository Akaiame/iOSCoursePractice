//
//  ViewController.swift
//  animation
//
//  Created by Дмитрий Ильичёв on 04.09.2022.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var bounceButton: UIButton!
    @IBOutlet weak var bounce: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        simpleAnimationSetup()
    }
    
    func simpleAnimationSetup() {
        
        bounce.backgroundColor = .yellow
        bounce.layer.cornerRadius = bounce.frame.width/2
        view.addSubview(bounce)
    }
    
    @IBAction func bounceButtonPressed(_ sender: Any) {
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 4, initialSpringVelocity: 5, options: [.repeat, .autoreverse]) {
            self.bounce.center = self.view.center
        }
    }
}

