import XCTest
@testable import Validator

struct PositiveValidator: Validator {
    func validate(value: Int) throws {
        if value < 0 {
            throw ValidationError.validationFailed
        }
    }
}

class ValidatorTests: XCTestCase {
    
    func testBasicValidation() {
        let validator = PositiveValidator()
        let negativeValue = -1
        if let _ = try? validator.validate(negativeValue) {
            XCTFail()
        } else {
            print("failed?")
        }
    }
    
    func testBasicSuccessedValidation() {
        let validator = PositiveValidator()
        let value = 5
        do {
            try validator.validate(value)
        } catch {
            XCTFail()
        }
    }
    
    func testIsValid() {
        let validator = PositiveValidator()
        let negativeValue = -1
        if validator.isValid(negativeValue) {
            XCTFail()
        }
    }
    
    func testValidIsValid() {
        let validator = PositiveValidator()
        let value = 5
        if !validator.isValid(value) {
            XCTFail()
        }
    }

}

#if os(Linux)
extension Validator: XCTestCaseProvider {
	var allTests : [(String, () throws -> Void)] {
		return [
			("testBasicValidation", testBasicValidation),
			("testBasicSuccessedValidation", testBasicSuccessedValidation),
			("testIsValid", testIsValid),
			("testValidIsValid", testValidIsValid)
		]
	}
}
#endif
