import XCTest
@testable import swift_log_stackdriver

final class swift_log_stackdriverTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(swift_log_stackdriver().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
