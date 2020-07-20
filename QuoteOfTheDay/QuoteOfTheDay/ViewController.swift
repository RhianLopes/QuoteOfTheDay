//
//  ViewController.swift
//  QuoteOfTheDay
//
//  Created by Rhian Lopes da Costa on 20/07/20.
//  Copyright © 2020 Rhian Lopes da Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextQuoteButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackgroud()
        setButtonBorderRadius()
    }

    func setGradientBackgroud() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.cyan.cgColor, UIColor.blue.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }

    func setButtonBorderRadius() {
        nextQuoteButton.layer.cornerRadius = 20
    }
}

