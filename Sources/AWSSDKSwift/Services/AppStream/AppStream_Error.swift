// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for AppStream
public enum AppStreamErrorType: AWSErrorType {
    case concurrentModificationException(message: String?)
    case incompatibleImageException(message: String?)
    case invalidAccountStatusException(message: String?)
    case invalidParameterCombinationException(message: String?)
    case invalidRoleException(message: String?)
    case limitExceededException(message: String?)
    case operationNotPermittedException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotAvailableException(message: String?)
    case resourceNotFoundException(message: String?)
}

extension AppStreamErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "IncompatibleImageException":
            self = .incompatibleImageException(message: message)
        case "InvalidAccountStatusException":
            self = .invalidAccountStatusException(message: message)
        case "InvalidParameterCombinationException":
            self = .invalidParameterCombinationException(message: message)
        case "InvalidRoleException":
            self = .invalidRoleException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "OperationNotPermittedException":
            self = .operationNotPermittedException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotAvailableException":
            self = .resourceNotAvailableException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        default:
            return nil
        }
    }
}
