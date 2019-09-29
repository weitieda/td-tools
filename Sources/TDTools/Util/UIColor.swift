//
//  File.swift
//  
//
//  Created by Tieda Wei on 2019-09-28.
//

import UIKit

extension UIColor {
    public static let customBlue = UIColor.rgb(red: 0, green: 120, blue: 175)
}

extension UIColor {
     public static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

extension UIColor {
    public var toImage: UIImage {
        let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        
        context?.setFillColor(self.cgColor)
        context?.fill(rect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image!
    }
}

