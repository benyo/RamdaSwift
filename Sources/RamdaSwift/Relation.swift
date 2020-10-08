//
//  File.swift
//  
//
//  Created by Benjamin Moreno Torres on 10/7/20.
//

import Foundation


extension R {
    
    static func equals<T: Comparable>(_ a: T, _ b: T) -> Bool {
        return a == b
    }
    
    static func gt<T: Comparable>(_ a: T, _ b: T) -> Bool {
        return a > b
    }
    
    static func gt<T: Comparable>(_ a: T) -> (T) -> Bool {
        return { value in
            return value > a
        }
    }
    
    static func gte<T: Comparable>(_ a: T, _ b: T) -> Bool {
        return a >= b
    }
    
    static func lt<T: Comparable>(_ a: T, _ b: T) -> Bool {
        return a < b
    }
    
    static func lt<T: Comparable>(_ a: T) -> (T) -> Bool {
        return { value in
            return value < a
        }
    }
    
    static func lte<T: Comparable>(_ a: T, _ b: T) -> Bool {
        return a <= b
    }
    
    static func eqProps<A, B: Comparable>(by keyPath: KeyPath<A, B>, _ a: A, _ b: A) -> Bool {
        return a[keyPath: keyPath] == b[keyPath: keyPath]
    }
}
