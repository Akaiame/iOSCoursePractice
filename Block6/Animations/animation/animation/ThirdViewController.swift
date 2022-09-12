//
//  ThirdViewController.swift
//  animation
//
//  Created by Дмитрий Ильичёв on 04.09.2022.
//

import UIKit
import Lottie

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var startAnimationButton: UIButton!
    @IBOutlet weak var sunWeatherAnimation: AnimationView!
    @IBOutlet weak var rainWeatherAnimation: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        rainWeatherAnimation.backgroundColor = .clear
        rainWeatherAnimation.loopMode = .loop
        rainWeatherAnimation.contentMode = .scaleAspectFill
        sunWeatherAnimation.animationSpeed = 0.1
    }
    


    @IBAction func startAnimationButtonPressed(_ sender: Any) {
        
        sunWeatherAnimation.play()
        rainWeatherAnimation.play()
        
    }
}
