//
//  File.swift
//  
//
//  Created by Benjamin Moreno Torres on 10/7/20.
//
import XCTest
@testable import RamdaSwift

fileprivate struct Item {
    var name: String
}

final class RelationTests: XCTestCase {
    func testAnd() {
        XCTAssertTrue(R.and(true, true))
        XCTAssertFalse(R.and(false, true))
        XCTAssertFalse(R.and(true, false))
        XCTAssertFalse(R.and(false, false))
    }
    
    func testUnion() {
        
        let a = [Item(name: "1"), Item(name: "2"), Item(name: "4")]
        let b = [Item(name: "1"), Item(name: "2"), Item(name: "3")]
        
        let result = R.union(key: \.name, a, b)
        let names = result.map{$0.name}.joined(separator: ",")
        XCTAssertEqual(result.count, 4)
        XCTAssertEqual(names, "1,2,4,3")
    }

    static var allTests = [
        ("testAnd", testAnd),
    ]
}
