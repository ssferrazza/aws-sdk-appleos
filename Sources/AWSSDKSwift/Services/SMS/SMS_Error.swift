// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for SMS
public enum SMSErrorType: AWSErrorType {
    case internalError(message: String?)
    case invalidParameterException(message: String?)
    case missingRequiredParameterException(message: String?)
    case noConnectorsAvailableException(message: String?)
    case operationNotPermittedException(message: String?)
    case replicationJobAlreadyExistsException(message: String?)
    case replicationJobNotFoundException(message: String?)
    case replicationRunLimitExceededException(message: String?)
    case serverCannotBeReplicatedException(message: String?)
    case temporarilyUnavailableException(message: String?)
    case unauthorizedOperationException(message: String?)
}

extension SMSErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalError":
            self = .internalError(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "MissingRequiredParameterException":
            self = .missingRequiredParameterException(message: message)
        case "NoConnectorsAvailableException":
            self = .noConnectorsAvailableException(message: message)
        case "OperationNotPermittedException":
            self = .operationNotPermittedException(message: message)
        case "ReplicationJobAlreadyExistsException":
            self = .replicationJobAlreadyExistsException(message: message)
        case "ReplicationJobNotFoundException":
            self = .replicationJobNotFoundException(message: message)
        case "ReplicationRunLimitExceededException":
            self = .replicationRunLimitExceededException(message: message)
        case "ServerCannotBeReplicatedException":
            self = .serverCannotBeReplicatedException(message: message)
        case "TemporarilyUnavailableException":
            self = .temporarilyUnavailableException(message: message)
        case "UnauthorizedOperationException":
            self = .unauthorizedOperationException(message: message)
        default:
            return nil
        }
    }
}
