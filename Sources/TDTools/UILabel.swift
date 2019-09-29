//
//  File.swift
//  
//
//  Created by Tieda Wei on 2019-09-28.
//

import UIKit

extension UILabel {
    public convenience init(text: String, font: UIFont = .systemFont(ofSize: 14), numberOfLines: Int = 1, textColor: UIColor = .black, textAlignment: NSTextAlignment = .left) {
        self.init(frame: .zero)
        self.text = text
        self.font = font
        self.textColor = textColor
        self.numberOfLines = numberOfLines
        self.textAlignment = textAlignment
    }
}
