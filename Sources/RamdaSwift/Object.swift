//
//  File.swift
//  
//
//  Created by Benjamin Moreno Torres on 10/11/20.
//

import Foundation


extension R {
    static func prop<A, B>(key keyPath: KeyPath<A, B>, _ obj: A) -> B {
        return obj[keyPath: keyPath]
    }
}
