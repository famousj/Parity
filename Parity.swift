//
//  Parity.swift
//  Parity
//
//  Created by Daniel Clelland on 19/11/15.
//  Copyright © 2015 Daniel Clelland. All rights reserved.
//

import Foundation

enum Parity {
    case Even
    case Odd
}

protocol IntegerParity {
    
    var parity: Parity { get }
    
}

extension IntegerParity {
    
    var isEven: Bool {
        return parity == .Even
    }
    
    var isOdd: Bool {
        return parity == .Odd
    }
    
}

// MARK: - Parity

extension Int: IntegerParity {
    
    var parity: Parity {
        return self % 2 == 0 ? .Even : .Odd
    }
    
}

extension UInt: IntegerParity {
    
    var parity: Parity {
        return self % 2 == 0 ? .Even : .Odd
    }
    
}
