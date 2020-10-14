//
//  Math.swift
//  
//
//  Created by Benjamin Moreno Torres on 10/11/20.
//

import Foundation

extension R {
    public static func add<T: Numeric>(_ a: T, _ b: T) -> T  {
        return a + b
    }
    
    public static func add<T: Numeric>(_ b: T) -> (T) -> T  {
        return { a in
            return a + b
        }
    }
    
    public static func multiply<T: Numeric>(_ a: T, _ b: T) -> T  {
        return a * b
    }    
    
    public static func multiply<T: Numeric>(_ b: T) -> (T) -> T  {
        return { a in
            return a * b
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
    
    public static func negative<T: BinaryFloatingPoint>(_ a: T) -> T {
        return -a
    }
}
