//
//  File.swift
//  
//
//  Created by Benjamin Moreno Torres on 10/7/20.
//

import Foundation

extension R {
    
    static func both<T>(_ a: @escaping (T) ->  Bool, _ b: @escaping (T) ->  Bool) -> (T) ->  Bool {
        return { value in
            return a(value) && b(value)
        }
    }
    
    static func and(_ a: Bool, _ b: Bool) -> Bool {
        return a && b
    }
    
    static func or(_ a: Bool, _ b: Bool) -> Bool {
        return a || b
    }

    static func isNil<T>(_ a: Optional<T>) -> Bool {
        return a == nil
    }
    
    static func isEmpty<T>(_ a: T) -> Bool {
        switch a {
        case let val as String:
            return val.isEmpty
        case let value as Int:
            return value == 0
        case let value as Double:
            return value == 0
        case let value as Float:
            return value == 0
        case let a as [Any]:
            return a.isEmpty
        default:
            return false
        }
    }
    
    static func ifElse<T>(_ a: @escaping (T) -> Bool, _ b: @escaping (T) -> T, _ c: @escaping (T) -> T) -> ((T) -> T)  {
        return { anyValue in
            return a(anyValue) ? b(anyValue) : c(anyValue)
        }
    }
    
    static func not<T>(_ a: T) -> Bool {
        switch a {
        case let value as Bool:
            return value == false
        case let value as String:
            return value.isEmpty
        case let value as Int:
            return value == 0
        case let value as Double:
            return value == 0
        case let value as Float:
            return value == 0
        case let value as Array<Any>:
            return value.count == 0
        default:
            return false
        }
    }
}