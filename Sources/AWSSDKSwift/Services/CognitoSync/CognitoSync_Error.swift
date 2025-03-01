// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CognitoSync
public enum CognitoSyncErrorType: AWSErrorType {
    case alreadyStreamedException(message: String?)
    case concurrentModificationException(message: String?)
    case duplicateRequestException(message: String?)
    case internalErrorException(message: String?)
    case invalidConfigurationException(message: String?)
    case invalidLambdaFunctionOutputException(message: String?)
    case invalidParameterException(message: String?)
    case lambdaThrottledException(message: String?)
    case limitExceededException(message: String?)
    case notAuthorizedException(message: String?)
    case resourceConflictException(message: String?)
    case resourceNotFoundException(message: String?)
    case tooManyRequestsException(message: String?)
}

extension CognitoSyncErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AlreadyStreamedException":
            self = .alreadyStreamedException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "DuplicateRequestException":
            self = .duplicateRequestException(message: message)
        case "InternalErrorException":
            self = .internalErrorException(message: message)
        case "InvalidConfigurationException":
            self = .invalidConfigurationException(message: message)
        case "InvalidLambdaFunctionOutputException":
            self = .invalidLambdaFunctionOutputException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "LambdaThrottledException":
            self = .lambdaThrottledException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        case "ResourceConflictException":
            self = .resourceConflictException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        default:
            return nil
        }
    }
}
