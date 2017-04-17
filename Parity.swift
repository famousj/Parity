//
//  Parity.swift
//  Parity
//
//  Created by Daniel Clelland on 19/11/15.
//  Copyright © 2015 Daniel Clelland. All rights reserved.
//

import Foundation

/// The parity of an integer: even or odd.
public enum Parity {
    
    /// Even parity.
    case even
    
    /// Odd parity.
    case odd
}

public protocol IntegerParity {
    
    /// The number's parity: even or odd.
    var parity: Parity { get }
    
}

// MARK: - Helpers

public extension IntegerParity {
    
    /// The number is even.
    var isEven: Bool {
        return parity == .even
    }
    
    /// The number is odd.
    var isOdd: Bool {
        return parity == .odd
    }
    
}

// MARK: - Implementations

extension IntegerType where Self: IntegerParity {
    
    /// The number's parity.
    public var parity: Parity {
        return self % 2 == 0 ? .even : .odd
    }
    
}

extension Int: IntegerParity { }

extension Int8: IntegerParity { }

extension Int16: IntegerParity { }

extension Int32: IntegerParity { }

extension Int64: IntegerParity { }

extension UInt: IntegerParity { }

extension UInt8: IntegerParity { }

extension UInt16: IntegerParity { }

extension UInt32: IntegerParity { }

extension UInt64: IntegerParity { }
