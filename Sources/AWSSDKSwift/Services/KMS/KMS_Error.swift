// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for KMS
public enum KMSErrorType: AWSErrorType {
    case alreadyExistsException(message: String?)
    case cloudHsmClusterInUseException(message: String?)
    case cloudHsmClusterInvalidConfigurationException(message: String?)
    case cloudHsmClusterNotActiveException(message: String?)
    case cloudHsmClusterNotFoundException(message: String?)
    case cloudHsmClusterNotRelatedException(message: String?)
    case customKeyStoreHasCMKsException(message: String?)
    case customKeyStoreInvalidStateException(message: String?)
    case customKeyStoreNameInUseException(message: String?)
    case customKeyStoreNotFoundException(message: String?)
    case dependencyTimeoutException(message: String?)
    case disabledException(message: String?)
    case expiredImportTokenException(message: String?)
    case incorrectKeyMaterialException(message: String?)
    case incorrectTrustAnchorException(message: String?)
    case invalidAliasNameException(message: String?)
    case invalidArnException(message: String?)
    case invalidCiphertextException(message: String?)
    case invalidGrantIdException(message: String?)
    case invalidGrantTokenException(message: String?)
    case invalidImportTokenException(message: String?)
    case invalidKeyUsageException(message: String?)
    case invalidMarkerException(message: String?)
    case kMSInternalException(message: String?)
    case kMSInvalidStateException(message: String?)
    case keyUnavailableException(message: String?)
    case limitExceededException(message: String?)
    case malformedPolicyDocumentException(message: String?)
    case notFoundException(message: String?)
    case tagException(message: String?)
    case unsupportedOperationException(message: String?)
}

extension KMSErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "CloudHsmClusterInUseException":
            self = .cloudHsmClusterInUseException(message: message)
        case "CloudHsmClusterInvalidConfigurationException":
            self = .cloudHsmClusterInvalidConfigurationException(message: message)
        case "CloudHsmClusterNotActiveException":
            self = .cloudHsmClusterNotActiveException(message: message)
        case "CloudHsmClusterNotFoundException":
            self = .cloudHsmClusterNotFoundException(message: message)
        case "CloudHsmClusterNotRelatedException":
            self = .cloudHsmClusterNotRelatedException(message: message)
        case "CustomKeyStoreHasCMKsException":
            self = .customKeyStoreHasCMKsException(message: message)
        case "CustomKeyStoreInvalidStateException":
            self = .customKeyStoreInvalidStateException(message: message)
        case "CustomKeyStoreNameInUseException":
            self = .customKeyStoreNameInUseException(message: message)
        case "CustomKeyStoreNotFoundException":
            self = .customKeyStoreNotFoundException(message: message)
        case "DependencyTimeoutException":
            self = .dependencyTimeoutException(message: message)
        case "DisabledException":
            self = .disabledException(message: message)
        case "ExpiredImportTokenException":
            self = .expiredImportTokenException(message: message)
        case "IncorrectKeyMaterialException":
            self = .incorrectKeyMaterialException(message: message)
        case "IncorrectTrustAnchorException":
            self = .incorrectTrustAnchorException(message: message)
        case "InvalidAliasNameException":
            self = .invalidAliasNameException(message: message)
        case "InvalidArnException":
            self = .invalidArnException(message: message)
        case "InvalidCiphertextException":
            self = .invalidCiphertextException(message: message)
        case "InvalidGrantIdException":
            self = .invalidGrantIdException(message: message)
        case "InvalidGrantTokenException":
            self = .invalidGrantTokenException(message: message)
        case "InvalidImportTokenException":
            self = .invalidImportTokenException(message: message)
        case "InvalidKeyUsageException":
            self = .invalidKeyUsageException(message: message)
        case "InvalidMarkerException":
            self = .invalidMarkerException(message: message)
        case "KMSInternalException":
            self = .kMSInternalException(message: message)
        case "KMSInvalidStateException":
            self = .kMSInvalidStateException(message: message)
        case "KeyUnavailableException":
            self = .keyUnavailableException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "MalformedPolicyDocumentException":
            self = .malformedPolicyDocumentException(message: message)
        case "NotFoundException":
            self = .notFoundException(message: message)
        case "TagException":
            self = .tagException(message: message)
        case "UnsupportedOperationException":
            self = .unsupportedOperationException(message: message)
        default:
            return nil
        }
    }
}
