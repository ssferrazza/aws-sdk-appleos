// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for KinesisVideo
public enum KinesisVideoErrorType: AWSErrorType {
    case accountStreamLimitExceededException(message: String?)
    case clientLimitExceededException(message: String?)
    case deviceStreamLimitExceededException(message: String?)
    case invalidArgumentException(message: String?)
    case invalidDeviceException(message: String?)
    case invalidResourceFormatException(message: String?)
    case notAuthorizedException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case tagsPerResourceExceededLimitException(message: String?)
    case versionMismatchException(message: String?)
}

extension KinesisVideoErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccountStreamLimitExceededException":
            self = .accountStreamLimitExceededException(message: message)
        case "ClientLimitExceededException":
            self = .clientLimitExceededException(message: message)
        case "DeviceStreamLimitExceededException":
            self = .deviceStreamLimitExceededException(message: message)
        case "InvalidArgumentException":
            self = .invalidArgumentException(message: message)
        case "InvalidDeviceException":
            self = .invalidDeviceException(message: message)
        case "InvalidResourceFormatException":
            self = .invalidResourceFormatException(message: message)
        case "NotAuthorizedException":
            self = .notAuthorizedException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "TagsPerResourceExceededLimitException":
            self = .tagsPerResourceExceededLimitException(message: message)
        case "VersionMismatchException":
            self = .versionMismatchException(message: message)
        default:
            return nil
        }
    }
}
