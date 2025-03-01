// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Support
public enum SupportErrorType: AWSErrorType {
    case attachmentIdNotFound(message: String?)
    case attachmentLimitExceeded(message: String?)
    case attachmentSetExpired(message: String?)
    case attachmentSetIdNotFound(message: String?)
    case attachmentSetSizeLimitExceeded(message: String?)
    case caseCreationLimitExceeded(message: String?)
    case caseIdNotFound(message: String?)
    case describeAttachmentLimitExceeded(message: String?)
    case internalServerError(message: String?)
}

extension SupportErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AttachmentIdNotFound":
            self = .attachmentIdNotFound(message: message)
        case "AttachmentLimitExceeded":
            self = .attachmentLimitExceeded(message: message)
        case "AttachmentSetExpired":
            self = .attachmentSetExpired(message: message)
        case "AttachmentSetIdNotFound":
            self = .attachmentSetIdNotFound(message: message)
        case "AttachmentSetSizeLimitExceeded":
            self = .attachmentSetSizeLimitExceeded(message: message)
        case "CaseCreationLimitExceeded":
            self = .caseCreationLimitExceeded(message: message)
        case "CaseIdNotFound":
            self = .caseIdNotFound(message: message)
        case "DescribeAttachmentLimitExceeded":
            self = .describeAttachmentLimitExceeded(message: message)
        case "InternalServerError":
            self = .internalServerError(message: message)
        default:
            return nil
        }
    }
}
