//
//  File.swift
//  
//
//  Created by Benjamin Moreno Torres on 17/1/21.
//

import Foundation

extension R {
    
    public static func contains<T: Comparable>(_ a: T, _ b: [T]) -> Bool {
        return b.contains(where: {$0 == a})
    }
    
    public static func contains<A, B: Comparable>(key keyPath: KeyPath<A, B>,_ a: A, _ b: [A]) -> Bool {
        return b.contains(where: {$0[keyPath: keyPath] == a[keyPath: keyPath]})
    }
    
    public static func filterEq<A, B: Comparable>(key keyPath: KeyPath<A, B>,_ a: A, _ b: [A]) -> [A] {
        return b.filter(R.equals(key: keyPath, a[keyPath: keyPath]))
    }
    
    public static func uniq<A, B: Comparable>(key keyPath: KeyPath<A, B>, _ a: [A]) -> [A] {
        var result: [A] = []
        for item in a {
            if R.not(R.contains(key: keyPath, item, result)) {
                result.append(item)
            }
        }
        return result
    }
    
    public static func uniq<A, B: Comparable>(key keyPath: KeyPath<A, B>) -> ([A]) -> [A] {
        return { a in
            return R.uniq(key: keyPath, a)
        }
    }
    
    public static func concat<T>(_ a: [T], _ b: [T]) -> [T] {
        return a + b
    }
    
    public static func concat<T>(_ a: [T]) -> ([T]) -> [T] {
        return { b in
            return a + b
        }
    }
}
