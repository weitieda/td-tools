//
//  File.swift
//  
//
//  Created by Tieda Wei on 2019-09-28.
//

import Foundation

extension Double {
    public func toInt() -> Int? {
        if self >= Double(Int.min) && self < Double(Int.max) {
            return Int(self)
        }
        return nil
    }
}
