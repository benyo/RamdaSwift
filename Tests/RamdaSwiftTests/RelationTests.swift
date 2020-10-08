//
//  File.swift
//  
//
//  Created by Benjamin Moreno Torres on 10/7/20.
//
import XCTest
@testable import RamdaSwift

final class RelationTests: XCTestCase {
    func testAnd() {
        XCTAssertTrue(R.and(true, true))
        XCTAssertFalse(R.and(false, true))
        XCTAssertFalse(R.and(true, false))
        XCTAssertFalse(R.and(false, false))
    }

    static var allTests = [
        ("testAnd", testAnd),
    ]
}
