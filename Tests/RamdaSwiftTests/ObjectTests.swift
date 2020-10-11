//
//  ObjectTests.swift
//  
//
//  Created by Benjamin Moreno Torres on 10/11/20.
//
import XCTest
@testable import RamdaSwift

fileprivate struct TestStruct {
    var name = ""
}

final class ObjectTests: XCTestCase {
    func testProp() {
        let name = "John"
        let object = TestStruct(name: name)
        
        let value = R.prop(key: \.name, object)
        
        XCTAssertEqual(value, name)
    }
    static var allTests = [
        ("testProp", testProp),
    ]
}
