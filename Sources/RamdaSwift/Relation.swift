//
//  Relation.swift
//  
//
//  Created by Benjamin Moreno Torres on 10/7/20.
//

import Foundation


extension R {
    
    public static func equals<T: Comparable>(_ a: T, _ b: T) -> Bool {
        return a == b
    }
    
    public static func equals<T: Comparable>(_ b: T) -> (T) -> Bool {
        return { a in
            return a == b
        }
    }
    
    public static func union<A, B: Comparable>(key keyPath: KeyPath<A, B>,_ a: [A], _ b: [A]) -> [A] {
        return R.uniq(key: keyPath, R.concat(a, b))
    }
    
    public static func equals<A, B: Comparable>(key keyPath: KeyPath<A, B>, _ b: B ) -> (A) -> Bool {
        return { a in
            return a[keyPath: keyPath] == b
        }
    }
    
    public static func gt<T: Comparable>(_ a: T, _ b: T) -> Bool {
        return a > b
    }
    
    public static func gt<T: Comparable>(_ a: T) -> (T) -> Bool {
        return { value in
            return value > a
        }
    }
    
    public static func gte<T: Comparable>(_ a: T, _ b: T) -> Bool {
        return a >= b
    }
    
    public static func lt<T: Comparable>(_ a: T, _ b: T) -> Bool {
        return a < b
    }
    
    public static func lt<T: Comparable>(_ a: T) -> (T) -> Bool {
        return { value in
            return value < a
        }
    }
    
    public static func lte<T: Comparable>(_ a: T, _ b: T) -> Bool {
        return a <= b
    }
    
    public static func eqProps<A, B: Comparable>(by keyPath: KeyPath<A, B>, _ a: A, _ b: A) -> Bool {
        return a[keyPath: keyPath] == b[keyPath: keyPath]
    }
}
