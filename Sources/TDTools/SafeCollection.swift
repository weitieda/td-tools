//
//  File.swift
//  
//
//  Created by Tieda Wei on 2019-09-28.
//

import Foundation

public extension Collection {
    public subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
