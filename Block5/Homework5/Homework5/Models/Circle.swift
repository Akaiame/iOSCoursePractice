//
//  Circle.swift
//  Homework5
//
//  Created by Дмитрий Ильичёв on 21.08.2022.
//

import UIKit

class Circle: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    init(color: UIColor, x: Double, y: Double,width: Double, height: Double) {
        
        super.init(frame: CGRect(x: x, y: y, width: width, height: height))
        self.backgroundColor = color
        self.layer.cornerRadius = width / 2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

func addCircleFunc(view: UIView, color: UIColor, x: Double, y: Double, size: Double = 4) -> Circle {
    let circleSize: CGFloat =  view.frame.height / size
    let circle = Circle(color: color, x: x, y: y, width: circleSize, height: circleSize)
    circle.center = CGPoint(x: x, y: y)
    view.addSubview(circle)
    return circle
}
