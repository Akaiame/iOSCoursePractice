//
//  MenuBlock.swift
//  CustomUI
//
//  Created by Дмитрий Ильичёв on 15.09.2022.
//

import Foundation
import UIKit

class MenuBlock: UIView {
    
  
    @IBOutlet weak var circleIcon: UIView!
    @IBOutlet weak var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        setupUI()
    }
    
    func commonInit() {
        Bundle.main
            .loadNibNamed("MenuBlock", owner: self, options: nil)
        contentView.fixInView(self)
        
    }
    
    func setupUI() {
        
        contentView.backgroundColor = #colorLiteral(red: 0.2030155063, green: 0.2030155063, blue: 0.2030155063, alpha: 1)
        circleIcon.layer.cornerRadius = circleIcon.frame.width / 2
        
    }
    
    
}



