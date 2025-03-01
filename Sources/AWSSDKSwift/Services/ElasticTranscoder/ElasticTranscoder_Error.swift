// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ElasticTranscoder
public enum ElasticTranscoderErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case incompatibleVersionException(message: String?)
    case internalServiceException(message: String?)
    case limitExceededException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case validationException(message: String?)
}

extension ElasticTranscoderErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "IncompatibleVersionException":
            self = .incompatibleVersionException(message: message)
        case "InternalServiceException":
            self = .internalServiceException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}
