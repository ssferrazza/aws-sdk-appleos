// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Rekognition
public enum RekognitionErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case idempotentParameterMismatchException(message: String?)
    case imageTooLargeException(message: String?)
    case internalServerError(message: String?)
    case invalidImageFormatException(message: String?)
    case invalidPaginationTokenException(message: String?)
    case invalidParameterException(message: String?)
    case invalidS3ObjectException(message: String?)
    case limitExceededException(message: String?)
    case provisionedThroughputExceededException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case throttlingException(message: String?)
    case videoTooLargeException(message: String?)
}

extension RekognitionErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "IdempotentParameterMismatchException":
            self = .idempotentParameterMismatchException(message: message)
        case "ImageTooLargeException":
            self = .imageTooLargeException(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        case "InvalidImageFormatException":
            self = .invalidImageFormatException(message: message)
        case "InvalidPaginationTokenException":
            self = .invalidPaginationTokenException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidS3ObjectException":
            self = .invalidS3ObjectException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ProvisionedThroughputExceededException":
            self = .provisionedThroughputExceededException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "VideoTooLargeException":
            self = .videoTooLargeException(message: message)
        default:
            return nil
        }
    }
}
