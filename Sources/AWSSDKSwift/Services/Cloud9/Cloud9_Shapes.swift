// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Cloud9 {

    public struct CreateEnvironmentEC2Request: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "automaticStopTimeMinutes", required: false, type: .integer), 
            AWSShapeMember(label: "clientRequestToken", required: false, type: .string), 
            AWSShapeMember(label: "description", required: false, type: .string), 
            AWSShapeMember(label: "instanceType", required: true, type: .string), 
            AWSShapeMember(label: "name", required: true, type: .string), 
            AWSShapeMember(label: "ownerArn", required: false, type: .string), 
            AWSShapeMember(label: "subnetId", required: false, type: .string)
        ]

        /// The number of minutes until the running instance is shut down after the environment has last been used.
        public let automaticStopTimeMinutes: Int32?
        /// A unique, case-sensitive string that helps AWS Cloud9 to ensure this operation completes no more than one time. For more information, see Client Tokens in the Amazon EC2 API Reference.
        public let clientRequestToken: String?
        /// The description of the environment to create.
        public let description: String?
        /// The type of instance to connect to the environment (for example, t2.micro).
        public let instanceType: String
        /// The name of the environment to create. This name is visible to other AWS IAM users in the same AWS account.
        public let name: String
        /// The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any AWS IAM principal. If this value is not specified, the ARN defaults to this environment's creator.
        public let ownerArn: String?
        /// The ID of the subnet in Amazon VPC that AWS Cloud9 will use to communicate with the Amazon EC2 instance.
        public let subnetId: String?

        public init(automaticStopTimeMinutes: Int32? = nil, clientRequestToken: String? = nil, description: String? = nil, instanceType: String, name: String, ownerArn: String? = nil, subnetId: String? = nil) {
            self.automaticStopTimeMinutes = automaticStopTimeMinutes
            self.clientRequestToken = clientRequestToken
            self.description = description
            self.instanceType = instanceType
            self.name = name
            self.ownerArn = ownerArn
            self.subnetId = subnetId
        }

        public func validate() throws {
            try validate(automaticStopTimeMinutes, name:"automaticStopTimeMinutes", max: 20160)
            try validate(clientRequestToken, name:"clientRequestToken", pattern: "[\\x20-\\x7E]{10,128}")
            try validate(description, name:"description", max: 200)
            try validate(instanceType, name:"instanceType", max: 20)
            try validate(instanceType, name:"instanceType", min: 5)
            try validate(instanceType, name:"instanceType", pattern: "^[a-z][1-9][.][a-z0-9]+$")
            try validate(name, name:"name", max: 60)
            try validate(name, name:"name", min: 1)
            try validate(ownerArn, name:"ownerArn", pattern: "arn:aws:(iam|sts)::\\d+:(root|user|federated-user|assumed-role)\\/?\\S*")
            try validate(subnetId, name:"subnetId", max: 30)
            try validate(subnetId, name:"subnetId", min: 5)
        }

        private enum CodingKeys: String, CodingKey {
            case automaticStopTimeMinutes = "automaticStopTimeMinutes"
            case clientRequestToken = "clientRequestToken"
            case description = "description"
            case instanceType = "instanceType"
            case name = "name"
            case ownerArn = "ownerArn"
            case subnetId = "subnetId"
        }
    }

    public struct CreateEnvironmentEC2Result: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentId", required: false, type: .string)
        ]

        /// The ID of the environment that was created.
        public let environmentId: String?

        public init(environmentId: String? = nil) {
            self.environmentId = environmentId
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId = "environmentId"
        }
    }

    public struct CreateEnvironmentMembershipRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentId", required: true, type: .string), 
            AWSShapeMember(label: "permissions", required: true, type: .enum), 
            AWSShapeMember(label: "userArn", required: true, type: .string)
        ]

        /// The ID of the environment that contains the environment member you want to add.
        public let environmentId: String
        /// The type of environment member permissions you want to associate with this environment member. Available values include:    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.  
        public let permissions: MemberPermissions
        /// The Amazon Resource Name (ARN) of the environment member you want to add.
        public let userArn: String

        public init(environmentId: String, permissions: MemberPermissions, userArn: String) {
            self.environmentId = environmentId
            self.permissions = permissions
            self.userArn = userArn
        }

        public func validate() throws {
            try validate(environmentId, name:"environmentId", pattern: "^[a-zA-Z0-9]{8,32}$")
            try validate(userArn, name:"userArn", pattern: "arn:aws:(iam|sts)::\\d+:(root|user|federated-user|assumed-role)\\/?\\S*")
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId = "environmentId"
            case permissions = "permissions"
            case userArn = "userArn"
        }
    }

    public struct CreateEnvironmentMembershipResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "membership", required: false, type: .structure)
        ]

        /// Information about the environment member that was added.
        public let membership: EnvironmentMember?

        public init(membership: EnvironmentMember? = nil) {
            self.membership = membership
        }

        private enum CodingKeys: String, CodingKey {
            case membership = "membership"
        }
    }

    public struct DeleteEnvironmentMembershipRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentId", required: true, type: .string), 
            AWSShapeMember(label: "userArn", required: true, type: .string)
        ]

        /// The ID of the environment to delete the environment member from.
        public let environmentId: String
        /// The Amazon Resource Name (ARN) of the environment member to delete from the environment.
        public let userArn: String

        public init(environmentId: String, userArn: String) {
            self.environmentId = environmentId
            self.userArn = userArn
        }

        public func validate() throws {
            try validate(environmentId, name:"environmentId", pattern: "^[a-zA-Z0-9]{8,32}$")
            try validate(userArn, name:"userArn", pattern: "arn:aws:(iam|sts)::\\d+:(root|user|federated-user|assumed-role)\\/?\\S*")
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId = "environmentId"
            case userArn = "userArn"
        }
    }

    public struct DeleteEnvironmentMembershipResult: AWSShape {


        public init() {
        }

    }

    public struct DeleteEnvironmentRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentId", required: true, type: .string)
        ]

        /// The ID of the environment to delete.
        public let environmentId: String

        public init(environmentId: String) {
            self.environmentId = environmentId
        }

        public func validate() throws {
            try validate(environmentId, name:"environmentId", pattern: "^[a-zA-Z0-9]{8,32}$")
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId = "environmentId"
        }
    }

    public struct DeleteEnvironmentResult: AWSShape {


        public init() {
        }

    }

    public struct DescribeEnvironmentMembershipsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentId", required: false, type: .string), 
            AWSShapeMember(label: "maxResults", required: false, type: .integer), 
            AWSShapeMember(label: "nextToken", required: false, type: .string), 
            AWSShapeMember(label: "permissions", required: false, type: .list), 
            AWSShapeMember(label: "userArn", required: false, type: .string)
        ]

        /// The ID of the environment to get environment member information about.
        public let environmentId: String?
        /// The maximum number of environment members to get information about.
        public let maxResults: Int32?
        /// During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
        public let nextToken: String?
        /// The type of environment member permissions to get information about. Available values include:    owner: Owns the environment.    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.   If no value is specified, information about all environment members are returned.
        public let permissions: [Permissions]?
        /// The Amazon Resource Name (ARN) of an individual environment member to get information about. If no value is specified, information about all environment members are returned.
        public let userArn: String?

        public init(environmentId: String? = nil, maxResults: Int32? = nil, nextToken: String? = nil, permissions: [Permissions]? = nil, userArn: String? = nil) {
            self.environmentId = environmentId
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.permissions = permissions
            self.userArn = userArn
        }

        public func validate() throws {
            try validate(environmentId, name:"environmentId", pattern: "^[a-zA-Z0-9]{8,32}$")
            try validate(maxResults, name:"maxResults", max: 25)
            try validate(maxResults, name:"maxResults", min: 0)
            try validate(userArn, name:"userArn", pattern: "arn:aws:(iam|sts)::\\d+:(root|user|federated-user|assumed-role)\\/?\\S*")
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId = "environmentId"
            case maxResults = "maxResults"
            case nextToken = "nextToken"
            case permissions = "permissions"
            case userArn = "userArn"
        }
    }

    public struct DescribeEnvironmentMembershipsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "memberships", required: false, type: .list), 
            AWSShapeMember(label: "nextToken", required: false, type: .string)
        ]

        /// Information about the environment members for the environment.
        public let memberships: [EnvironmentMember]?
        /// If there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call.
        public let nextToken: String?

        public init(memberships: [EnvironmentMember]? = nil, nextToken: String? = nil) {
            self.memberships = memberships
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case memberships = "memberships"
            case nextToken = "nextToken"
        }
    }

    public struct DescribeEnvironmentStatusRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentId", required: true, type: .string)
        ]

        /// The ID of the environment to get status information about.
        public let environmentId: String

        public init(environmentId: String) {
            self.environmentId = environmentId
        }

        public func validate() throws {
            try validate(environmentId, name:"environmentId", pattern: "^[a-zA-Z0-9]{8,32}$")
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId = "environmentId"
        }
    }

    public struct DescribeEnvironmentStatusResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "message", required: false, type: .string), 
            AWSShapeMember(label: "status", required: false, type: .enum)
        ]

        /// Any informational message about the status of the environment.
        public let message: String?
        /// The status of the environment. Available values include:    connecting: The environment is connecting.    creating: The environment is being created.    deleting: The environment is being deleted.    error: The environment is in an error state.    ready: The environment is ready.    stopped: The environment is stopped.    stopping: The environment is stopping.  
        public let status: EnvironmentStatus?

        public init(message: String? = nil, status: EnvironmentStatus? = nil) {
            self.message = message
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case message = "message"
            case status = "status"
        }
    }

    public struct DescribeEnvironmentsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentIds", required: true, type: .list)
        ]

        /// The IDs of individual environments to get information about.
        public let environmentIds: [String]

        public init(environmentIds: [String]) {
            self.environmentIds = environmentIds
        }

        public func validate() throws {
            try environmentIds.forEach {
                try validate($0, name:"environmentIds[]", pattern: "^[a-zA-Z0-9]{8,32}$")
            }
            try validate(environmentIds, name:"environmentIds", max: 25)
            try validate(environmentIds, name:"environmentIds", min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case environmentIds = "environmentIds"
        }
    }

    public struct DescribeEnvironmentsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environments", required: false, type: .list)
        ]

        /// Information about the environments that are returned.
        public let environments: [Environment]?

        public init(environments: [Environment]? = nil) {
            self.environments = environments
        }

        private enum CodingKeys: String, CodingKey {
            case environments = "environments"
        }
    }

    public struct Environment: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "arn", required: false, type: .string), 
            AWSShapeMember(label: "description", required: false, type: .string), 
            AWSShapeMember(label: "id", required: false, type: .string), 
            AWSShapeMember(label: "lifecycle", required: false, type: .structure), 
            AWSShapeMember(label: "name", required: false, type: .string), 
            AWSShapeMember(label: "ownerArn", required: false, type: .string), 
            AWSShapeMember(label: "type", required: false, type: .enum)
        ]

        /// The Amazon Resource Name (ARN) of the environment.
        public let arn: String?
        /// The description for the environment.
        public let description: String?
        /// The ID of the environment.
        public let id: String?
        /// The state of the environment in its creation or deletion lifecycle.
        public let lifecycle: EnvironmentLifecycle?
        /// The name of the environment.
        public let name: String?
        /// The Amazon Resource Name (ARN) of the environment owner.
        public let ownerArn: String?
        /// The type of environment. Valid values include the following:    ec2: An Amazon Elastic Compute Cloud (Amazon EC2) instance connects to the environment.    ssh: Your own server connects to the environment.  
        public let `type`: EnvironmentType?

        public init(arn: String? = nil, description: String? = nil, id: String? = nil, lifecycle: EnvironmentLifecycle? = nil, name: String? = nil, ownerArn: String? = nil, type: EnvironmentType? = nil) {
            self.arn = arn
            self.description = description
            self.id = id
            self.lifecycle = lifecycle
            self.name = name
            self.ownerArn = ownerArn
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "arn"
            case description = "description"
            case id = "id"
            case lifecycle = "lifecycle"
            case name = "name"
            case ownerArn = "ownerArn"
            case `type` = "type"
        }
    }

    public struct EnvironmentLifecycle: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "failureResource", required: false, type: .string), 
            AWSShapeMember(label: "reason", required: false, type: .string), 
            AWSShapeMember(label: "status", required: false, type: .enum)
        ]

        /// If the environment failed to delete, the Amazon Resource Name (ARN) of the related AWS resource.
        public let failureResource: String?
        /// Any informational message about the lifecycle state of the environment.
        public let reason: String?
        /// The current creation or deletion lifecycle state of the environment.    CREATED: The environment was successfully created.    DELETE_FAILED: The environment failed to delete.    DELETING: The environment is in the process of being deleted.  
        public let status: EnvironmentLifecycleStatus?

        public init(failureResource: String? = nil, reason: String? = nil, status: EnvironmentLifecycleStatus? = nil) {
            self.failureResource = failureResource
            self.reason = reason
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case failureResource = "failureResource"
            case reason = "reason"
            case status = "status"
        }
    }

    public enum EnvironmentLifecycleStatus: String, CustomStringConvertible, Codable {
        case created = "CREATED"
        case deleting = "DELETING"
        case deleteFailed = "DELETE_FAILED"
        public var description: String { return self.rawValue }
    }

    public struct EnvironmentMember: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentId", required: false, type: .string), 
            AWSShapeMember(label: "lastAccess", required: false, type: .timestamp), 
            AWSShapeMember(label: "permissions", required: false, type: .enum), 
            AWSShapeMember(label: "userArn", required: false, type: .string), 
            AWSShapeMember(label: "userId", required: false, type: .string)
        ]

        /// The ID of the environment for the environment member.
        public let environmentId: String?
        /// The time, expressed in epoch time format, when the environment member last opened the environment.
        public let lastAccess: TimeStamp?
        /// The type of environment member permissions associated with this environment member. Available values include:    owner: Owns the environment.    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.  
        public let permissions: Permissions?
        /// The Amazon Resource Name (ARN) of the environment member.
        public let userArn: String?
        /// The user ID in AWS Identity and Access Management (AWS IAM) of the environment member.
        public let userId: String?

        public init(environmentId: String? = nil, lastAccess: TimeStamp? = nil, permissions: Permissions? = nil, userArn: String? = nil, userId: String? = nil) {
            self.environmentId = environmentId
            self.lastAccess = lastAccess
            self.permissions = permissions
            self.userArn = userArn
            self.userId = userId
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId = "environmentId"
            case lastAccess = "lastAccess"
            case permissions = "permissions"
            case userArn = "userArn"
            case userId = "userId"
        }
    }

    public enum EnvironmentStatus: String, CustomStringConvertible, Codable {
        case error = "error"
        case creating = "creating"
        case connecting = "connecting"
        case ready = "ready"
        case stopping = "stopping"
        case stopped = "stopped"
        case deleting = "deleting"
        public var description: String { return self.rawValue }
    }

    public enum EnvironmentType: String, CustomStringConvertible, Codable {
        case ssh = "ssh"
        case ec2 = "ec2"
        public var description: String { return self.rawValue }
    }

    public struct ListEnvironmentsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "maxResults", required: false, type: .integer), 
            AWSShapeMember(label: "nextToken", required: false, type: .string)
        ]

        /// The maximum number of environments to get identifiers for.
        public let maxResults: Int32?
        /// During a previous call, if there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call. To get all of the items in the list, keep calling this operation with each subsequent next token that is returned, until no more next tokens are returned.
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        public func validate() throws {
            try validate(maxResults, name:"maxResults", max: 25)
            try validate(maxResults, name:"maxResults", min: 0)
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "maxResults"
            case nextToken = "nextToken"
        }
    }

    public struct ListEnvironmentsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentIds", required: false, type: .list), 
            AWSShapeMember(label: "nextToken", required: false, type: .string)
        ]

        /// The list of environment identifiers.
        public let environmentIds: [String]?
        /// If there are more than 25 items in the list, only the first 25 items are returned, along with a unique string called a next token. To get the next batch of items in the list, call this operation again, adding the next token to the call.
        public let nextToken: String?

        public init(environmentIds: [String]? = nil, nextToken: String? = nil) {
            self.environmentIds = environmentIds
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case environmentIds = "environmentIds"
            case nextToken = "nextToken"
        }
    }

    public enum MemberPermissions: String, CustomStringConvertible, Codable {
        case readWrite = "read-write"
        case readOnly = "read-only"
        public var description: String { return self.rawValue }
    }

    public enum Permissions: String, CustomStringConvertible, Codable {
        case owner = "owner"
        case readWrite = "read-write"
        case readOnly = "read-only"
        public var description: String { return self.rawValue }
    }

    public struct UpdateEnvironmentMembershipRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "environmentId", required: true, type: .string), 
            AWSShapeMember(label: "permissions", required: true, type: .enum), 
            AWSShapeMember(label: "userArn", required: true, type: .string)
        ]

        /// The ID of the environment for the environment member whose settings you want to change.
        public let environmentId: String
        /// The replacement type of environment member permissions you want to associate with this environment member. Available values include:    read-only: Has read-only access to the environment.    read-write: Has read-write access to the environment.  
        public let permissions: MemberPermissions
        /// The Amazon Resource Name (ARN) of the environment member whose settings you want to change.
        public let userArn: String

        public init(environmentId: String, permissions: MemberPermissions, userArn: String) {
            self.environmentId = environmentId
            self.permissions = permissions
            self.userArn = userArn
        }

        public func validate() throws {
            try validate(environmentId, name:"environmentId", pattern: "^[a-zA-Z0-9]{8,32}$")
            try validate(userArn, name:"userArn", pattern: "arn:aws:(iam|sts)::\\d+:(root|user|federated-user|assumed-role)\\/?\\S*")
        }

        private enum CodingKeys: String, CodingKey {
            case environmentId = "environmentId"
            case permissions = "permissions"
            case userArn = "userArn"
        }
    }

    public struct UpdateEnvironmentMembershipResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "membership", required: false, type: .structure)
        ]

        /// Information about the environment member whose settings were changed.
        public let membership: EnvironmentMember?

        public init(membership: EnvironmentMember? = nil) {
            self.membership = membership
        }

        private enum CodingKeys: String, CodingKey {
            case membership = "membership"
        }
    }

    public struct UpdateEnvironmentRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "description", required: false, type: .string), 
            AWSShapeMember(label: "environmentId", required: true, type: .string), 
            AWSShapeMember(label: "name", required: false, type: .string)
        ]

        /// Any new or replacement description for the environment.
        public let description: String?
        /// The ID of the environment to change settings.
        public let environmentId: String
        /// A replacement name for the environment.
        public let name: String?

        public init(description: String? = nil, environmentId: String, name: String? = nil) {
            self.description = description
            self.environmentId = environmentId
            self.name = name
        }

        public func validate() throws {
            try validate(description, name:"description", max: 200)
            try validate(environmentId, name:"environmentId", pattern: "^[a-zA-Z0-9]{8,32}$")
            try validate(name, name:"name", max: 60)
            try validate(name, name:"name", min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case description = "description"
            case environmentId = "environmentId"
            case name = "name"
        }
    }

    public struct UpdateEnvironmentResult: AWSShape {


        public init() {
        }

    }
}
