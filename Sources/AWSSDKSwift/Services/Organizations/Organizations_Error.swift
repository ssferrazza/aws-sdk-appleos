// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Organizations
public enum OrganizationsErrorType: AWSErrorType {
    case aWSOrganizationsNotInUseException(message: String?)
    case accessDeniedException(message: String?)
    case accessDeniedForDependencyException(message: String?)
    case accountNotFoundException(message: String?)
    case accountOwnerNotVerifiedException(message: String?)
    case alreadyInOrganizationException(message: String?)
    case childNotFoundException(message: String?)
    case concurrentModificationException(message: String?)
    case constraintViolationException(message: String?)
    case createAccountStatusNotFoundException(message: String?)
    case destinationParentNotFoundException(message: String?)
    case duplicateAccountException(message: String?)
    case duplicateHandshakeException(message: String?)
    case duplicateOrganizationalUnitException(message: String?)
    case duplicatePolicyAttachmentException(message: String?)
    case duplicatePolicyException(message: String?)
    case finalizingOrganizationException(message: String?)
    case handshakeAlreadyInStateException(message: String?)
    case handshakeConstraintViolationException(message: String?)
    case handshakeNotFoundException(message: String?)
    case invalidHandshakeTransitionException(message: String?)
    case invalidInputException(message: String?)
    case malformedPolicyDocumentException(message: String?)
    case masterCannotLeaveOrganizationException(message: String?)
    case organizationNotEmptyException(message: String?)
    case organizationalUnitNotEmptyException(message: String?)
    case organizationalUnitNotFoundException(message: String?)
    case parentNotFoundException(message: String?)
    case policyInUseException(message: String?)
    case policyNotAttachedException(message: String?)
    case policyNotFoundException(message: String?)
    case policyTypeAlreadyEnabledException(message: String?)
    case policyTypeNotAvailableForOrganizationException(message: String?)
    case policyTypeNotEnabledException(message: String?)
    case rootNotFoundException(message: String?)
    case serviceException(message: String?)
    case sourceParentNotFoundException(message: String?)
    case targetNotFoundException(message: String?)
    case tooManyRequestsException(message: String?)
    case unsupportedAPIEndpointException(message: String?)
}

extension OrganizationsErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AWSOrganizationsNotInUseException":
            self = .aWSOrganizationsNotInUseException(message: message)
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "AccessDeniedForDependencyException":
            self = .accessDeniedForDependencyException(message: message)
        case "AccountNotFoundException":
            self = .accountNotFoundException(message: message)
        case "AccountOwnerNotVerifiedException":
            self = .accountOwnerNotVerifiedException(message: message)
        case "AlreadyInOrganizationException":
            self = .alreadyInOrganizationException(message: message)
        case "ChildNotFoundException":
            self = .childNotFoundException(message: message)
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "ConstraintViolationException":
            self = .constraintViolationException(message: message)
        case "CreateAccountStatusNotFoundException":
            self = .createAccountStatusNotFoundException(message: message)
        case "DestinationParentNotFoundException":
            self = .destinationParentNotFoundException(message: message)
        case "DuplicateAccountException":
            self = .duplicateAccountException(message: message)
        case "DuplicateHandshakeException":
            self = .duplicateHandshakeException(message: message)
        case "DuplicateOrganizationalUnitException":
            self = .duplicateOrganizationalUnitException(message: message)
        case "DuplicatePolicyAttachmentException":
            self = .duplicatePolicyAttachmentException(message: message)
        case "DuplicatePolicyException":
            self = .duplicatePolicyException(message: message)
        case "FinalizingOrganizationException":
            self = .finalizingOrganizationException(message: message)
        case "HandshakeAlreadyInStateException":
            self = .handshakeAlreadyInStateException(message: message)
        case "HandshakeConstraintViolationException":
            self = .handshakeConstraintViolationException(message: message)
        case "HandshakeNotFoundException":
            self = .handshakeNotFoundException(message: message)
        case "InvalidHandshakeTransitionException":
            self = .invalidHandshakeTransitionException(message: message)
        case "InvalidInputException":
            self = .invalidInputException(message: message)
        case "MalformedPolicyDocumentException":
            self = .malformedPolicyDocumentException(message: message)
        case "MasterCannotLeaveOrganizationException":
            self = .masterCannotLeaveOrganizationException(message: message)
        case "OrganizationNotEmptyException":
            self = .organizationNotEmptyException(message: message)
        case "OrganizationalUnitNotEmptyException":
            self = .organizationalUnitNotEmptyException(message: message)
        case "OrganizationalUnitNotFoundException":
            self = .organizationalUnitNotFoundException(message: message)
        case "ParentNotFoundException":
            self = .parentNotFoundException(message: message)
        case "PolicyInUseException":
            self = .policyInUseException(message: message)
        case "PolicyNotAttachedException":
            self = .policyNotAttachedException(message: message)
        case "PolicyNotFoundException":
            self = .policyNotFoundException(message: message)
        case "PolicyTypeAlreadyEnabledException":
            self = .policyTypeAlreadyEnabledException(message: message)
        case "PolicyTypeNotAvailableForOrganizationException":
            self = .policyTypeNotAvailableForOrganizationException(message: message)
        case "PolicyTypeNotEnabledException":
            self = .policyTypeNotEnabledException(message: message)
        case "RootNotFoundException":
            self = .rootNotFoundException(message: message)
        case "ServiceException":
            self = .serviceException(message: message)
        case "SourceParentNotFoundException":
            self = .sourceParentNotFoundException(message: message)
        case "TargetNotFoundException":
            self = .targetNotFoundException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "UnsupportedAPIEndpointException":
            self = .unsupportedAPIEndpointException(message: message)
        default:
            return nil
        }
    }
}
