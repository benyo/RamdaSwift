//
//  Math.swift
//  
//
//  Created by Benjamin Moreno Torres on 10/11/20.
//

import Foundation


extension R {
    static func sum<A: Numeric>(_ a: [A]) -> A {
        return a.reduce(0, {$0 + $1})
    }
}
