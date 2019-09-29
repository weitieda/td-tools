//
//  File.swift
//  
//
//  Created by Tieda Wei on 2019-09-28.
//

import UIKit

@available(iOS 8.2, *)
public class RoundedTextButton: UIButton {
    
    init(title: String, titleColor: UIColor, bgColor: UIColor) {
        super.init(frame: .zero)
        
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        titleLabel?.font = .systemFont(ofSize: 15, weight: .heavy)
        backgroundColor = bgColor
        clipsToBounds = true
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = frame.height / 4
    }
    
    override public var isHighlighted: Bool {
        didSet {
            titleLabel?.alpha = isHighlighted ? 0.5 : 1
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

