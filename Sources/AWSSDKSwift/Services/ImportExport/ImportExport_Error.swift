// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ImportExport
public enum ImportExportErrorType: AWSErrorType {
    case bucketPermissionException(message: String?)
    case canceledJobIdException(message: String?)
    case createJobQuotaExceededException(message: String?)
    case expiredJobIdException(message: String?)
    case invalidAccessKeyIdException(message: String?)
    case invalidAddressException(message: String?)
    case invalidCustomsException(message: String?)
    case invalidFileSystemException(message: String?)
    case invalidJobIdException(message: String?)
    case invalidManifestFieldException(message: String?)
    case invalidParameterException(message: String?)
    case invalidVersionException(message: String?)
    case malformedManifestException(message: String?)
    case missingCustomsException(message: String?)
    case missingManifestFieldException(message: String?)
    case missingParameterException(message: String?)
    case multipleRegionsException(message: String?)
    case noSuchBucketException(message: String?)
    case unableToCancelJobIdException(message: String?)
    case unableToUpdateJobIdException(message: String?)
}

extension ImportExportErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BucketPermissionException":
            self = .bucketPermissionException(message: message)
        case "CanceledJobIdException":
            self = .canceledJobIdException(message: message)
        case "CreateJobQuotaExceededException":
            self = .createJobQuotaExceededException(message: message)
        case "ExpiredJobIdException":
            self = .expiredJobIdException(message: message)
        case "InvalidAccessKeyIdException":
            self = .invalidAccessKeyIdException(message: message)
        case "InvalidAddressException":
            self = .invalidAddressException(message: message)
        case "InvalidCustomsException":
            self = .invalidCustomsException(message: message)
        case "InvalidFileSystemException":
            self = .invalidFileSystemException(message: message)
        case "InvalidJobIdException":
            self = .invalidJobIdException(message: message)
        case "InvalidManifestFieldException":
            self = .invalidManifestFieldException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "InvalidVersionException":
            self = .invalidVersionException(message: message)
        case "MalformedManifestException":
            self = .malformedManifestException(message: message)
        case "MissingCustomsException":
            self = .missingCustomsException(message: message)
        case "MissingManifestFieldException":
            self = .missingManifestFieldException(message: message)
        case "MissingParameterException":
            self = .missingParameterException(message: message)
        case "MultipleRegionsException":
            self = .multipleRegionsException(message: message)
        case "NoSuchBucketException":
            self = .noSuchBucketException(message: message)
        case "UnableToCancelJobIdException":
            self = .unableToCancelJobIdException(message: message)
        case "UnableToUpdateJobIdException":
            self = .unableToUpdateJobIdException(message: message)
        default:
            return nil
        }
    }
}
