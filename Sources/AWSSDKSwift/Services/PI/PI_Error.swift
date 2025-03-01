// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for PI
public enum PIErrorType: AWSErrorType {
    case internalServiceError(message: String?)
    case invalidArgumentException(message: String?)
    case notAuthorizedException(message: String?)
}

extension PIErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalServiceError":
            self = .internalServiceError(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        default:
            return nil
        }
    }
}
