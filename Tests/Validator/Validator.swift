import XCTest
@testable import Validator

class Validator: XCTestCase {

	func testExample() {
		// This is an example of a functional test case.
		// Use XCTAssert and related functions to verify your tests produce the correct results.
	}

}

#if os(Linux)
extension Validator: XCTestCaseProvider {
	var allTests : [(String, () throws -> Void)] {
		return [
			("testExample", testExample),
		]
	}
}
#endif
