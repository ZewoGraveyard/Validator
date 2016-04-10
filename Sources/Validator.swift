public protocol Validator {
    associatedtype Validating
    func validate(value: Validating) throws
}

extension Validator {
    public func isValid(value: Validating) -> Bool {
        do {
            try validate(value)
            return true
        } catch {
            return false
        }
    }
}

public enum ValidationError: ErrorProtocol {
    case validationFailed
}