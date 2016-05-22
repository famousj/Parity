//
//  Parity.swift
//  Parity
//
//  Created by Daniel Clelland on 19/11/15.
//  Copyright © 2015 Daniel Clelland. All rights reserved.
//

import Foundation

/// The parity of an integer: even or odd.
enum Parity {
  
    /// Even parity.
    case Even
    
    /// Odd parity.
    case Odd
}

protocol IntegerParity {
  
    /// The number's parity: even or odd.
    var parity: Parity { get }
    
}

// MARK: - Helpers

extension IntegerParity {
  
    /// The number is even.
    var isEven: Bool {
        return parity == .Even
    }
    
    /// The number is odd.
    var isOdd: Bool {
        return parity == .Odd
    }
    
}

// MARK: - Implementations

extension Int: IntegerParity {
  
    /// The number's parity.
    var parity: Parity {
        return self % 2 == 0 ? .Even : .Odd
    }
    
}

extension UInt: IntegerParity {
  
    /// The number's parity.
    var parity: Parity {
        return self % 2 == 0 ? .Even : .Odd
    }
    
}
