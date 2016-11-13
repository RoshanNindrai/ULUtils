//
//  ULNode.swift
//  Utilities
//
//  Created by Roshan Balaji Nindrai SenthilNatha on 11/5/16.
//
//

import Foundation

public struct ConfigNode {
    var value : AnyObject?

    public func string() -> String? {
        guard let stringValue = value as? String else { return nil }
        return stringValue
    }

    public func int() -> Int? {
        guard let intValue = value as? Int else { return nil }
        return intValue
    }

    public func bool() -> Bool? {
        guard let boolValue = value as? Bool else { return nil }
        return boolValue
    }

    public func object() -> AnyObject? {
        return value
    }
    
}
