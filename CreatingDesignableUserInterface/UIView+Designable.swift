//
//  UIView+Designable.swift
//  CreatingDesignableUserInterface
//
//  Created by sinahk on 2/13/19.
//  Copyright © 2019 sinakhodadad. All rights reserved.
//

import UIKit


@IBDesignable class DesignableImageView: UIImageView { }
@IBDesignable class DesignableButton: UIButton { }
@IBDesignable class DesignableTextField: UITextField {
    @IBInspectable
    var placeholderTextColor: UIColor = UIColor.lightGray{
        didSet{
            guard let placeholder = placeholder else {
                return
            }
            attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: placeholderTextColor])
        }
    }
}

extension UIView{
    @IBInspectable
    var borderWidth: CGFloat{
        get{
            return layer.borderWidth
        }
        set(newBorderWidth){
            layer.borderWidth = newBorderWidth
        }
    }
    
    @IBInspectable
    var borderColor: UIColor?{
        get{
            return layer.borderColor != nil ? UIColor(cgColor: layer.borderColor!) : nil
        }
        set{
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable
    var cornerRadius: CGFloat{
        get{
            return layer.cornerRadius
        }
        set{
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue != 0
        }
    }
    
    var makeCircular: Bool?{
        get{
            return nil
        }
        set{
            if let makeCircular = newValue, makeCircular {
                cornerRadius = min(bounds.width, bounds.height) / 2.0
            }
        }
    }
    
}
