//
//  exchangeRates.swift
//  CustomUI
//
//  Created by Дмитрий Ильичёв on 12.09.2022.
//

import UIKit

extension UIView {
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        if #available(iOS 11, *) {
            self.clipsToBounds = true
            self.layer.cornerRadius = radius
            var masked = CACornerMask()
            if corners.contains(.topLeft) { masked.insert(.layerMinXMinYCorner) }
            if corners.contains(.topRight) { masked.insert(.layerMaxXMinYCorner) }
            if corners.contains(.bottomLeft) { masked.insert(.layerMinXMaxYCorner) }
            if corners.contains(.bottomRight) { masked.insert(.layerMaxXMaxYCorner) }
            self.layer.maskedCorners = masked
        } else {
            let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            layer.mask = mask
        }
    }
}

class ExchangeRates: UIView {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var usdView: UIView!
    @IBOutlet weak var euroView: UIView!
    @IBOutlet weak var usd: UILabel!
    @IBOutlet weak var euro: UILabel!
    @IBOutlet weak var usdRate: UILabel!
    @IBOutlet weak var euroRate: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        setupUI()
    }
    
    func commonInit() {
        Bundle.main
            .loadNibNamed("ExchangeRates", owner: self, options: nil)
        contentView.fixInView(self)
    }
    
    func setupUI() {
        usdView.roundCorners(corners: [.bottomLeft, .topLeft], radius: 15)
        euroView.roundCorners(corners: [.topRight, .bottomRight], radius: 15)
        usdView.backgroundColor = UIColor(white: 1, alpha: 0.1)
        euroView.backgroundColor = UIColor(white: 1, alpha: 0.1)
        usd.alpha = 0.5
        euro.alpha = 0.5
        gradientSetup(view: self.contentView, colors: [#colorLiteral(red: 0.2666666667, green: 0.3803921569, blue: 0.4549019608, alpha: 1).cgColor, #colorLiteral(red: 0.332986176, green: 0.4574436545, blue: 0.5485693812, alpha: 1).cgColor], startPoint: CGPoint(x: 0.0, y: 0.5), endPoint: CGPoint(x: 1.0, y: 0.5), at: 0)
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
