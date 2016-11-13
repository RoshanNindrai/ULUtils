//
//  Dictionary+Utils.swift
//  Utilities
//
//  Created by Roshan Balaji Nindrai SenthilNatha on 11/5/16.
//
//

import Foundation

extension Dictionary {
    mutating func merge (_ rhs: Dictionary) {
        for (key, value) in rhs {
            self[key] = value
        }
    }
}
