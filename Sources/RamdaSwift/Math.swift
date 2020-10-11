//
//  Math.swift
//  
//
//  Created by Benjamin Moreno Torres on 10/11/20.
//

import Foundation

let a: Double = 1/2

extension R {
    public static func add<T: Numeric>(_ a: T, _ b: T) -> T  {
        return a + b
    }
    
    public static func add<T: Numeric>(_ b: T) -> (T) -> T  {
        return { a in
            return a + b
        }
    }
    
    public static func divide<T: BinaryFloatingPoint>(_ a: T, _ b: T) -> T {
        return b == 0 ? 0 :  a / b
    }
    
    public static func divide<T: BinaryFloatingPoint>(_ b: T) -> (T) -> T  {
        return { a in
            return b == 0 ? 0 :  a / b
        }
    }
    
    public static func subtract<T: Numeric>(_ a: T, _ b: T) -> T  {
        return a - b
    }

    public static func subtract<T: Numeric>(_ b: T) -> (T) -> T  {
        return { a in
            return a - b
        }
    }
    
    public static func sum<A: Numeric>(_ a: [A]) -> A {
        return a.reduce(0, {$0 + $1})
    }
}
