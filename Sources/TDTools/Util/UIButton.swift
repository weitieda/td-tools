//
//  File.swift
//  
//
//  Created by Tieda Wei on 2019-09-28.
//

import UIKit

extension UIButton {
    public convenience init(title: String, titleColor: UIColor, font: UIFont = .systemFont(ofSize: 14), backgroundColor: UIColor = .clear) {
        self.init(type: .system)
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = font
        
        self.backgroundColor = backgroundColor
    }
    
    public convenience init(image: UIImage, tintColor: UIColor? = nil) {
        self.init(type: .system)
        if tintColor == nil {
            setImage(image, for: .normal)
        } else {
            setImage(image.withRenderingMode(.alwaysTemplate), for: .normal)
            self.tintColor = tintColor
        }
    }
}
