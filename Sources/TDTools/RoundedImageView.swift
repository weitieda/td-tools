//
//  File.swift
//  
//
//  Created by Tieda Wei on 2019-09-28.
//

import UIKit

public class RoundedImageView: UIImageView {
    
    override init(image: UIImage? = nil) {
        super.init(image: image)
        contentMode = .scaleAspectFill
        clipsToBounds = true
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = min(frame.height, frame.width) / 2
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}

