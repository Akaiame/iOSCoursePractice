//
//  exchangeRates.swift
//  CustomUI
//
//  Created by Дмитрий Ильичёв on 12.09.2022.
//

import Foundation
import UIKit

protocol ExchangeRatesDelegate {
    
}

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}

class ExchangeRates: UIView {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var usdRate: UILabel!
    @IBOutlet weak var euroRate: UILabel!
    @IBOutlet weak var usdView: UIView!
    @IBOutlet weak var euroView: UIView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main
            .loadNibNamed("ExchangeRates", owner: self, options: nil)
        contentView.fixInView(self)
    }
    
}

extension UIView {
    
    func fixInView(_ container: UIView!) -> Void {
            self.translatesAutoresizingMaskIntoConstraints = false;
            self.frame = container.frame;
            container.addSubview(self);
            NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
            NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
            NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
            NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
        }
}
