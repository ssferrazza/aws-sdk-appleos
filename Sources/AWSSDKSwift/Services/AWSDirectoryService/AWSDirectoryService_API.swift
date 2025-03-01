// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
AWS Directory Service AWS Directory Service is a web service that makes it easy for you to setup and run directories in the AWS cloud, or connect your AWS resources with an existing on-premises Microsoft Active Directory. This guide provides detailed information about AWS Directory Service operations, data types, parameters, and errors. For information about AWS Directory Services features, see AWS Directory Service and the AWS Directory Service Administration Guide.  AWS provides SDKs that consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWS Directory Service and other AWS services. For more information about the AWS SDKs, including how to download and install them, see Tools for Amazon Web Services. 
*/
public struct AWSDirectoryService {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "DirectoryService_20150416",
            service: "ds",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2015-04-16",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [AWSDirectoryServiceErrorType.self]
        )
    }

    ///  Accepts a directory sharing request that was sent from the directory owner account.
    public func acceptSharedDirectory(_ input: AcceptSharedDirectoryRequest) throws -> Future<AcceptSharedDirectoryResult> {
        return try client.send(operation: "AcceptSharedDirectory", path: "/", httpMethod: "POST", input: input)
    }

    ///  If the DNS server for your on-premises domain uses a publicly addressable IP address, you must add a CIDR address block to correctly route traffic to and from your Microsoft AD on Amazon Web Services. AddIpRoutes adds this address block. You can also use AddIpRoutes to facilitate routing traffic that uses public IP ranges from your Microsoft AD on AWS to a peer VPC.  Before you call AddIpRoutes, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the AddIpRoutes operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.
    public func addIpRoutes(_ input: AddIpRoutesRequest) throws -> Future<AddIpRoutesResult> {
        return try client.send(operation: "AddIpRoutes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or overwrites one or more tags for the specified directory. Each directory can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique to each resource.
    public func addTagsToResource(_ input: AddTagsToResourceRequest) throws -> Future<AddTagsToResourceResult> {
        return try client.send(operation: "AddTagsToResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Cancels an in-progress schema extension to a Microsoft AD directory. Once a schema extension has started replicating to all domain controllers, the task can no longer be canceled. A schema extension can be canceled during any of the following states; Initializing, CreatingSnapshot, and UpdatingSchema.
    public func cancelSchemaExtension(_ input: CancelSchemaExtensionRequest) throws -> Future<CancelSchemaExtensionResult> {
        return try client.send(operation: "CancelSchemaExtension", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an AD Connector to connect to an on-premises directory. Before you call ConnectDirectory, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the ConnectDirectory operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.
    public func connectDirectory(_ input: ConnectDirectoryRequest) throws -> Future<ConnectDirectoryResult> {
        return try client.send(operation: "ConnectDirectory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an alias for a directory and assigns the alias to the directory. The alias is used to construct the access URL for the directory, such as http://&lt;alias&gt;.awsapps.com.  After an alias has been created, it cannot be deleted or reused, so this operation should only be used when absolutely necessary. 
    public func createAlias(_ input: CreateAliasRequest) throws -> Future<CreateAliasResult> {
        return try client.send(operation: "CreateAlias", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a computer account in the specified directory, and joins the computer to the directory.
    public func createComputer(_ input: CreateComputerRequest) throws -> Future<CreateComputerResult> {
        return try client.send(operation: "CreateComputer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a conditional forwarder associated with your AWS directory. Conditional forwarders are required in order to set up a trust relationship with another domain. The conditional forwarder points to the trusted domain.
    public func createConditionalForwarder(_ input: CreateConditionalForwarderRequest) throws -> Future<CreateConditionalForwarderResult> {
        return try client.send(operation: "CreateConditionalForwarder", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a Simple AD directory. Before you call CreateDirectory, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the CreateDirectory operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.
    public func createDirectory(_ input: CreateDirectoryRequest) throws -> Future<CreateDirectoryResult> {
        return try client.send(operation: "CreateDirectory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a subscription to forward real time Directory Service domain controller security logs to the specified CloudWatch log group in your AWS account.
    public func createLogSubscription(_ input: CreateLogSubscriptionRequest) throws -> Future<CreateLogSubscriptionResult> {
        return try client.send(operation: "CreateLogSubscription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an AWS Managed Microsoft AD directory. Before you call CreateMicrosoftAD, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the CreateMicrosoftAD operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.
    public func createMicrosoftAD(_ input: CreateMicrosoftADRequest) throws -> Future<CreateMicrosoftADResult> {
        return try client.send(operation: "CreateMicrosoftAD", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS cloud.  You cannot take snapshots of AD Connector directories. 
    public func createSnapshot(_ input: CreateSnapshotRequest) throws -> Future<CreateSnapshotResult> {
        return try client.send(operation: "CreateSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships. For example, you can establish a trust between your AWS Managed Microsoft AD directory, and your existing on-premises Microsoft Active Directory. This would allow you to provide users and groups access to resources in either domain, with a single set of credentials. This action initiates the creation of the AWS side of a trust relationship between an AWS Managed Microsoft AD directory and an external domain. You can create either a forest trust or an external trust.
    public func createTrust(_ input: CreateTrustRequest) throws -> Future<CreateTrustResult> {
        return try client.send(operation: "CreateTrust", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a conditional forwarder that has been set up for your AWS directory.
    public func deleteConditionalForwarder(_ input: DeleteConditionalForwarderRequest) throws -> Future<DeleteConditionalForwarderResult> {
        return try client.send(operation: "DeleteConditionalForwarder", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an AWS Directory Service directory. Before you call DeleteDirectory, ensure that all of the required permissions have been explicitly granted through a policy. For details about what permissions are required to run the DeleteDirectory operation, see AWS Directory Service API Permissions: Actions, Resources, and Conditions Reference.
    public func deleteDirectory(_ input: DeleteDirectoryRequest) throws -> Future<DeleteDirectoryResult> {
        return try client.send(operation: "DeleteDirectory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes the specified log subscription.
    public func deleteLogSubscription(_ input: DeleteLogSubscriptionRequest) throws -> Future<DeleteLogSubscriptionResult> {
        return try client.send(operation: "DeleteLogSubscription", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a directory snapshot.
    public func deleteSnapshot(_ input: DeleteSnapshotRequest) throws -> Future<DeleteSnapshotResult> {
        return try client.send(operation: "DeleteSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an existing trust relationship between your AWS Managed Microsoft AD directory and an external domain.
    public func deleteTrust(_ input: DeleteTrustRequest) throws -> Future<DeleteTrustResult> {
        return try client.send(operation: "DeleteTrust", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes the specified directory as a publisher to the specified SNS topic.
    public func deregisterEventTopic(_ input: DeregisterEventTopicRequest) throws -> Future<DeregisterEventTopicResult> {
        return try client.send(operation: "DeregisterEventTopic", path: "/", httpMethod: "POST", input: input)
    }

    ///  Obtains information about the conditional forwarders for this account. If no input parameters are provided for RemoteDomainNames, this request describes all conditional forwarders for the specified directory ID.
    public func describeConditionalForwarders(_ input: DescribeConditionalForwardersRequest) throws -> Future<DescribeConditionalForwardersResult> {
        return try client.send(operation: "DescribeConditionalForwarders", path: "/", httpMethod: "POST", input: input)
    }

    ///  Obtains information about the directories that belong to this account. You can retrieve information about specific directories by passing the directory identifiers in the DirectoryIds parameter. Otherwise, all directories that belong to the current account are returned. This operation supports pagination with the use of the NextToken request and response parameters. If more results are available, the DescribeDirectoriesResult.NextToken member contains a token that you pass in the next call to DescribeDirectories to retrieve the next set of items. You can also specify a maximum number of return results with the Limit parameter.
    public func describeDirectories(_ input: DescribeDirectoriesRequest) throws -> Future<DescribeDirectoriesResult> {
        return try client.send(operation: "DescribeDirectories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides information about any domain controllers in your directory.
    public func describeDomainControllers(_ input: DescribeDomainControllersRequest) throws -> Future<DescribeDomainControllersResult> {
        return try client.send(operation: "DescribeDomainControllers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Obtains information about which SNS topics receive status messages from the specified directory. If no input parameters are provided, such as DirectoryId or TopicName, this request describes all of the associations in the account.
    public func describeEventTopics(_ input: DescribeEventTopicsRequest) throws -> Future<DescribeEventTopicsResult> {
        return try client.send(operation: "DescribeEventTopics", path: "/", httpMethod: "POST", input: input)
    }

    ///  Returns the shared directories in your account. 
    public func describeSharedDirectories(_ input: DescribeSharedDirectoriesRequest) throws -> Future<DescribeSharedDirectoriesResult> {
        return try client.send(operation: "DescribeSharedDirectories", path: "/", httpMethod: "POST", input: input)
    }

    ///  Obtains information about the directory snapshots that belong to this account. This operation supports pagination with the use of the NextToken request and response parameters. If more results are available, the DescribeSnapshots.NextToken member contains a token that you pass in the next call to DescribeSnapshots to retrieve the next set of items. You can also specify a maximum number of return results with the Limit parameter.
    public func describeSnapshots(_ input: DescribeSnapshotsRequest) throws -> Future<DescribeSnapshotsResult> {
        return try client.send(operation: "DescribeSnapshots", path: "/", httpMethod: "POST", input: input)
    }

    ///  Obtains information about the trust relationships for this account. If no input parameters are provided, such as DirectoryId or TrustIds, this request describes all the trust relationships belonging to the account.
    public func describeTrusts(_ input: DescribeTrustsRequest) throws -> Future<DescribeTrustsResult> {
        return try client.send(operation: "DescribeTrusts", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.
    public func disableRadius(_ input: DisableRadiusRequest) throws -> Future<DisableRadiusResult> {
        return try client.send(operation: "DisableRadius", path: "/", httpMethod: "POST", input: input)
    }

    ///  Disables single-sign on for a directory.
    public func disableSso(_ input: DisableSsoRequest) throws -> Future<DisableSsoResult> {
        return try client.send(operation: "DisableSso", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.
    public func enableRadius(_ input: EnableRadiusRequest) throws -> Future<EnableRadiusResult> {
        return try client.send(operation: "EnableRadius", path: "/", httpMethod: "POST", input: input)
    }

    ///  Enables single sign-on for a directory.
    public func enableSso(_ input: EnableSsoRequest) throws -> Future<EnableSsoResult> {
        return try client.send(operation: "EnableSso", path: "/", httpMethod: "POST", input: input)
    }

    ///  Obtains directory limit information for the current region.
    public func getDirectoryLimits(_ input: GetDirectoryLimitsRequest) throws -> Future<GetDirectoryLimitsResult> {
        return try client.send(operation: "GetDirectoryLimits", path: "/", httpMethod: "POST", input: input)
    }

    ///  Obtains the manual snapshot limits for a directory.
    public func getSnapshotLimits(_ input: GetSnapshotLimitsRequest) throws -> Future<GetSnapshotLimitsResult> {
        return try client.send(operation: "GetSnapshotLimits", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the address blocks that you have added to a directory.
    public func listIpRoutes(_ input: ListIpRoutesRequest) throws -> Future<ListIpRoutesResult> {
        return try client.send(operation: "ListIpRoutes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists the active log subscriptions for the AWS account.
    public func listLogSubscriptions(_ input: ListLogSubscriptionsRequest) throws -> Future<ListLogSubscriptionsResult> {
        return try client.send(operation: "ListLogSubscriptions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all schema extensions applied to a Microsoft AD Directory.
    public func listSchemaExtensions(_ input: ListSchemaExtensionsRequest) throws -> Future<ListSchemaExtensionsResult> {
        return try client.send(operation: "ListSchemaExtensions", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all tags on a directory.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResult> {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a directory with an SNS topic. This establishes the directory as a publisher to the specified SNS topic. You can then receive email or text (SMS) messages when the status of your directory changes. You get notified if your directory goes from an Active status to an Impaired or Inoperable status. You also receive a notification when the directory returns to an Active status.
    public func registerEventTopic(_ input: RegisterEventTopicRequest) throws -> Future<RegisterEventTopicResult> {
        return try client.send(operation: "RegisterEventTopic", path: "/", httpMethod: "POST", input: input)
    }

    ///  Rejects a directory sharing request that was sent from the directory owner account.
    public func rejectSharedDirectory(_ input: RejectSharedDirectoryRequest) throws -> Future<RejectSharedDirectoryResult> {
        return try client.send(operation: "RejectSharedDirectory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes IP address blocks from a directory.
    public func removeIpRoutes(_ input: RemoveIpRoutesRequest) throws -> Future<RemoveIpRoutesResult> {
        return try client.send(operation: "RemoveIpRoutes", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes tags from a directory.
    public func removeTagsFromResource(_ input: RemoveTagsFromResourceRequest) throws -> Future<RemoveTagsFromResourceResult> {
        return try client.send(operation: "RemoveTagsFromResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Resets the password for any user in your AWS Managed Microsoft AD or Simple AD directory.
    public func resetUserPassword(_ input: ResetUserPasswordRequest) throws -> Future<ResetUserPasswordResult> {
        return try client.send(operation: "ResetUserPassword", path: "/", httpMethod: "POST", input: input)
    }

    ///  Restores a directory using an existing directory snapshot. When you restore a directory from a snapshot, any changes made to the directory after the snapshot date are overwritten. This action returns as soon as the restore operation is initiated. You can monitor the progress of the restore operation by calling the DescribeDirectories operation with the directory identifier. When the DirectoryDescription.Stage value changes to Active, the restore operation is complete.
    public func restoreFromSnapshot(_ input: RestoreFromSnapshotRequest) throws -> Future<RestoreFromSnapshotResult> {
        return try client.send(operation: "RestoreFromSnapshot", path: "/", httpMethod: "POST", input: input)
    }

    ///  Shares a specified directory (DirectoryId) in your AWS account (directory owner) with another AWS account (directory consumer). With this operation you can use your directory from any AWS account and from any Amazon VPC within an AWS Region. When you share your AWS Managed Microsoft AD directory, AWS Directory Service creates a shared directory in the directory consumer account. This shared directory contains the metadata to provide access to the directory within the directory owner account. The shared directory is visible in all VPCs in the directory consumer account. The ShareMethod parameter determines whether the specified directory can be shared between AWS accounts inside the same AWS organization (ORGANIZATIONS). It also determines whether you can share the directory with any other AWS account either inside or outside of the organization (HANDSHAKE). The ShareNotes parameter is only used when HANDSHAKE is called, which sends a directory sharing request to the directory consumer. 
    public func shareDirectory(_ input: ShareDirectoryRequest) throws -> Future<ShareDirectoryResult> {
        return try client.send(operation: "ShareDirectory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Applies a schema extension to a Microsoft AD directory.
    public func startSchemaExtension(_ input: StartSchemaExtensionRequest) throws -> Future<StartSchemaExtensionResult> {
        return try client.send(operation: "StartSchemaExtension", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops the directory sharing between the directory owner and consumer accounts. 
    public func unshareDirectory(_ input: UnshareDirectoryRequest) throws -> Future<UnshareDirectoryResult> {
        return try client.send(operation: "UnshareDirectory", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates a conditional forwarder that has been set up for your AWS directory.
    public func updateConditionalForwarder(_ input: UpdateConditionalForwarderRequest) throws -> Future<UpdateConditionalForwarderResult> {
        return try client.send(operation: "UpdateConditionalForwarder", path: "/", httpMethod: "POST", input: input)
    }

    ///  Adds or removes domain controllers to or from the directory. Based on the difference between current value and new value (provided through this API call), domain controllers will be added or removed. It may take up to 45 minutes for any new domain controllers to become fully active once the requested number of domain controllers is updated. During this time, you cannot make another update request.
    public func updateNumberOfDomainControllers(_ input: UpdateNumberOfDomainControllersRequest) throws -> Future<UpdateNumberOfDomainControllersResult> {
        return try client.send(operation: "UpdateNumberOfDomainControllers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory.
    public func updateRadius(_ input: UpdateRadiusRequest) throws -> Future<UpdateRadiusResult> {
        return try client.send(operation: "UpdateRadius", path: "/", httpMethod: "POST", input: input)
    }

    ///  Updates the trust that has been set up between your AWS Managed Microsoft AD directory and an on-premises Active Directory.
    public func updateTrust(_ input: UpdateTrustRequest) throws -> Future<UpdateTrustResult> {
        return try client.send(operation: "UpdateTrust", path: "/", httpMethod: "POST", input: input)
    }

    ///  AWS Directory Service for Microsoft Active Directory allows you to configure and verify trust relationships. This action verifies a trust relationship between your AWS Managed Microsoft AD directory and an external domain.
    public func verifyTrust(_ input: VerifyTrustRequest) throws -> Future<VerifyTrustResult> {
        return try client.send(operation: "VerifyTrust", path: "/", httpMethod: "POST", input: input)
    }
}
