//
//  CustomView.swift
//  CreatingDesignableUserInterface
//
//  Created by sinahk on 2/13/19.
//  Copyright © 2019 sinakhodadad. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView {
    
    override open class var layerClass: Swift.AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    
    
    var gradientLayer: CAGradientLayer{
        return layer as! CAGradientLayer
    }


    override func draw(_ rect: CGRect) {
        layer.masksToBounds = true
        layer.borderWidth = 10.0
        layer.borderColor = UIColor(red: 0.0, green: 64/255.0, blue: 128/255.0, alpha: 1.0).cgColor
        layer.cornerRadius = 20.0
        let startColor = UIColor(displayP3Red: 102.0/255.0, green: 128.0/255.0, blue: 1.0, alpha: 1.0).cgColor
        let endColor = UIColor(displayP3Red: 0.0, green: 128.0/255.0, blue: 1.0, alpha: 1.0).cgColor
        gradientLayer.colors = [startColor, endColor]
        
        
    }
}
