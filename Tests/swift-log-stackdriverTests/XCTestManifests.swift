import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(swift_log_stackdriverTests.allTests),
    ]
}
#endif
