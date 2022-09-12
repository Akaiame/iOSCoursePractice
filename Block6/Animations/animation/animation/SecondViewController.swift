//
//  SecondViewController.swift
//  animation
//
//  Created by Дмитрий Ильичёв on 04.09.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var circle: UIView!
    @IBOutlet weak var runButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMyCircle()

    }
    
    func setupMyCircle() {
        
        circle.center.x = view.bounds.minX + circle.bounds.width / 2
        circle.center.y = view.bounds.minY + circle.bounds.width / 2
        circle.layer.cornerRadius = circle.frame.height / 2
        circle.alpha = 0
        
    }

    @IBAction func runButtonPressed(_ sender: Any) {
        let start = self.circle.center
        
        UIView.animateKeyframes(withDuration: 4, delay: 0, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                self.circle.transform = .identity
                self.circle.alpha = 1
                self.circle.center = CGPoint(x: self.view.bounds.maxX - self.circle.bounds.width / 2, y: self.view.bounds.minY + self.circle.bounds.width / 2)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                self.circle.center = CGPoint(x: self.view.bounds.maxX - self.circle.bounds.width / 2, y: self.view.bounds.maxY - self.circle.bounds.width / 2)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.50, relativeDuration: 0.25) {
                self.circle.center = CGPoint(x: self.view.bounds.minX + self.circle.bounds.width / 2, y: self.view.bounds.maxY - self.circle.bounds.width / 2)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                self.circle.transform = CGAffineTransform.identity.scaledBy(x: 0.7, y: 0.7)
                self.circle.alpha = 0
                self.circle.center = start
            }
        })


    }
    
    
}
