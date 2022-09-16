//
//  GradientSetup.swift
//  CustomUI
//
//  Created by Дмитрий Ильичёв on 16.09.2022.
//

import UIKit

func gradientSetup(view: UIView, colors: [CGColor], startPoint: CGPoint, endPoint: CGPoint, at layer: UInt32) {
    let gradient = CAGradientLayer()

    gradient.frame = view.bounds
    view.clipsToBounds = true
    gradient.colors = colors
    gradient.startPoint = startPoint
    gradient.endPoint = endPoint
    view.layer.insertSublayer(gradient, at: layer)
}
