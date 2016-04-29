public protocol Validator {
    func validate(_ value: Any) throws
}

extension Validator {
    public func isValid(_ value: Any) -> Bool {
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
    case incompatibleType
}
