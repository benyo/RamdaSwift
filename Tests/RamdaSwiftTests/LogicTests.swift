import XCTest
@testable import RamdaSwift

final class LogicTests: XCTestCase {
    func testAnd() {
        XCTAssertTrue(R.and(true, true))
        XCTAssertFalse(R.and(false, true))
        XCTAssertFalse(R.and(true, false))
        XCTAssertFalse(R.and(false, false))
    }
    
    func testOr() {
        XCTAssertTrue(R.or(true, true))
        XCTAssertTrue(R.or(false, true))
        XCTAssertTrue(R.or(true, false))
        XCTAssertFalse(R.or(false, false))
    }
    
    func testNot() {
        XCTAssertFalse(R.not(true))
        XCTAssertTrue(R.not(false))
        XCTAssertTrue(R.not(0))
        XCTAssertFalse(R.not(1))
    }
    
    func testIsEmpty() {
        XCTAssertFalse(R.isEmpty([1, 2, 3]))
        XCTAssertTrue(R.isEmpty([]))
        XCTAssertTrue(R.isEmpty(""))
        XCTAssertTrue(R.isEmpty(0))
        XCTAssertFalse(R.isEmpty(1))
    }
    
    func testNil() {
        let value: Int? = nil
        XCTAssertTrue(R.isNil(value))
    }
    
    func testBoth() {
        let gt10 = R.gt(10)
        let lt20 = R.lt(20)

        let f = R.both(gt10, lt20);
        XCTAssertTrue(f(15))
        XCTAssertFalse(f(30))
    }

    static var allTests = [
        ("testAnd", testAnd),
    ]
}
