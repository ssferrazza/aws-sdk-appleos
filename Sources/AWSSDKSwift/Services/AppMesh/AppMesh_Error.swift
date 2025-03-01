// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for AppMesh
public enum AppMeshErrorType: AWSErrorType {
    case badRequestException(message: String?)
    case conflictException(message: String?)
    case forbiddenException(message: String?)
    case internalServerErrorException(message: String?)
    case limitExceededException(message: String?)
    case notFoundException(message: String?)
    case resourceInUseException(message: String?)
    case serviceUnavailableException(message: String?)
    case tooManyRequestsException(message: String?)
    case tooManyTagsException(message: String?)
}

extension AppMeshErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BadRequestException":
            self = .badRequestException(message: message)
        case "ConflictException":
            self = .conflictException(message: message)
        case "ForbiddenException":
            self = .forbiddenException(message: message)
        case "InternalServerErrorException":
            self = .internalServerErrorException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        default:
            return nil
        }
    }
}
