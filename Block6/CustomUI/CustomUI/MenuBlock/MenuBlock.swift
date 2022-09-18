//
//  MenuBlock.swift
//  CustomUI
//
//  Created by Дмитрий Ильичёв on 15.09.2022.
//

import UIKit

class MenuBlock: UIView {
    
    @IBOutlet weak var customImage: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
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
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.viewPressed))
        self.contentView.addGestureRecognizer(tap)
        contentView.backgroundColor = #colorLiteral(red: 0.2030155063, green: 0.2030155063, blue: 0.2030155063, alpha: 1)
        circleIcon.layer.cornerRadius = circleIcon.frame.width / 2
    }
    @objc func viewPressed(_ sender: UITapGestureRecognizer) {
        print("Hello")
    }
    
    func configure(with text: String, image: String, colors: [CGColor], startPoint: CGPoint, endPoint: CGPoint, at layer: UInt32)
    {
        gradientSetup(view: self.circleIcon, colors: colors , startPoint: startPoint, endPoint: endPoint, at: layer)
        infoLabel.text = text
        customImage.image = UIImage(named: image)
        
    }
}



