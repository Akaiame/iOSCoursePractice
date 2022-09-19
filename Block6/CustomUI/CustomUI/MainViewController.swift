//
//  ViewController.swift
//  CustomUI
//
//  Created by Дмитрий Ильичёв on 12.09.2022.
//

import UIKit

class MainViewController: UIViewController, MenuBlockDelegate {
    
    @IBOutlet weak var rightMenuBlock: MenuBlock!
    @IBOutlet weak var leftMenuBlock: MenuBlock!
    @IBOutlet weak var topMenuBlock: MenuBlock!
    @IBOutlet weak var infoView: UIView!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        gradientSetup(view: self.infoView, colors: [#colorLiteral(red: 0, green: 0.5191636682, blue: 0.468101263, alpha: 1).cgColor, #colorLiteral(red: 0, green: 0.6623525023, blue: 0.4157736599, alpha: 1).cgColor], startPoint: CGPoint(x: 0.0, y: 1.0), endPoint: CGPoint(x: 1.0, y: 0.0), at: 0)
        self.view.backgroundColor = #colorLiteral(red: 0.1176470588, green: 0.1176470588, blue: 0.1176470588, alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupMenuBlock()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func setupMenuBlock() {
        topMenuBlock.configure(with: "Рассрочка на карту", image: "installment", colors: [#colorLiteral(red: 0.09411764706, green: 0.5921568627, blue: 0.4901960784, alpha: 1).cgColor, #colorLiteral(red: 0.1803921569, green: 0.737254902, blue: 0.4235294118, alpha: 1).cgColor], startPoint: CGPoint(x: 0.0, y: 0.0), endPoint: CGPoint(x: 1.0, y: 1.0), at: 0, tag: .topMenuBlock)
        leftMenuBlock.configure(with: "Покупка частями", image: "puzzle", colors: [#colorLiteral(red: 0.4588235294, green: 0.3568627451, blue: 0.6901960784, alpha: 1).cgColor, #colorLiteral(red: 0.4901960784, green: 0.3843137255, blue: 0.7333333333, alpha: 1).cgColor], startPoint: CGPoint(x: 0.0, y: 0.5), endPoint: CGPoint(x: 1.0, y: 0.5), at: 0, tag: .leftMenuBlock)
        rightMenuBlock.configure(with: "Архив", image: "folder", colors: [#colorLiteral(red: 0.4941176471, green: 0.6039215686, blue: 0.6470588235, alpha: 1).cgColor, #colorLiteral(red: 0.4196078431, green: 0.537254902, blue: 0.5921568627, alpha: 1).cgColor], startPoint: CGPoint(x: 0.5, y: 0.5), endPoint: CGPoint(x: 1.0, y: 1.0), at: 0, tag: .rightMenuBlock)
        
        topMenuBlock.delegate = self
        leftMenuBlock.delegate = self
        rightMenuBlock.delegate = self
    }
    
    func viewPressed(item: MenuTag) {
        print("\(item.rawValue)")
    }
}

