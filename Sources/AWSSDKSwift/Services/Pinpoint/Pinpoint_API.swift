// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Doc Engage API - Amazon Pinpoint API
*/
public struct Pinpoint {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "pinpoint",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2016-12-01",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [PinpointErrorType.self]
        )
    }

    ///   Creates an application.
    public func createApp(_ input: CreateAppRequest) throws -> Future<CreateAppResponse> {
        return try client.send(operation: "CreateApp", path: "/v1/apps", httpMethod: "POST", input: input)
    }

    ///  Creates a new campaign for an application or updates the settings of an existing campaign for an application.
    public func createCampaign(_ input: CreateCampaignRequest) throws -> Future<CreateCampaignResponse> {
        return try client.send(operation: "CreateCampaign", path: "/v1/apps/{application-id}/campaigns", httpMethod: "POST", input: input)
    }

    ///  Creates a new export job for an application.
    public func createExportJob(_ input: CreateExportJobRequest) throws -> Future<CreateExportJobResponse> {
        return try client.send(operation: "CreateExportJob", path: "/v1/apps/{application-id}/jobs/export", httpMethod: "POST", input: input)
    }

    ///  Creates a new import job for an application.
    public func createImportJob(_ input: CreateImportJobRequest) throws -> Future<CreateImportJobResponse> {
        return try client.send(operation: "CreateImportJob", path: "/v1/apps/{application-id}/jobs/import", httpMethod: "POST", input: input)
    }

    ///  Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.
    public func createSegment(_ input: CreateSegmentRequest) throws -> Future<CreateSegmentResponse> {
        return try client.send(operation: "CreateSegment", path: "/v1/apps/{application-id}/segments", httpMethod: "POST", input: input)
    }

    ///  Disables the ADM channel for an application and deletes any existing settings for the channel.
    public func deleteAdmChannel(_ input: DeleteAdmChannelRequest) throws -> Future<DeleteAdmChannelResponse> {
        return try client.send(operation: "DeleteAdmChannel", path: "/v1/apps/{application-id}/channels/adm", httpMethod: "DELETE", input: input)
    }

    ///  Disables the APNs channel for an application and deletes any existing settings for the channel.
    public func deleteApnsChannel(_ input: DeleteApnsChannelRequest) throws -> Future<DeleteApnsChannelResponse> {
        return try client.send(operation: "DeleteApnsChannel", path: "/v1/apps/{application-id}/channels/apns", httpMethod: "DELETE", input: input)
    }

    ///  Disables the APNs sandbox channel for an application and deletes any existing settings for the channel.
    public func deleteApnsSandboxChannel(_ input: DeleteApnsSandboxChannelRequest) throws -> Future<DeleteApnsSandboxChannelResponse> {
        return try client.send(operation: "DeleteApnsSandboxChannel", path: "/v1/apps/{application-id}/channels/apns_sandbox", httpMethod: "DELETE", input: input)
    }

    ///  Disables the APNs VoIP channel for an application and deletes any existing settings for the channel.
    public func deleteApnsVoipChannel(_ input: DeleteApnsVoipChannelRequest) throws -> Future<DeleteApnsVoipChannelResponse> {
        return try client.send(operation: "DeleteApnsVoipChannel", path: "/v1/apps/{application-id}/channels/apns_voip", httpMethod: "DELETE", input: input)
    }

    ///  Disables the APNs VoIP sandbox channel for an application and deletes any existing settings for the channel.
    public func deleteApnsVoipSandboxChannel(_ input: DeleteApnsVoipSandboxChannelRequest) throws -> Future<DeleteApnsVoipSandboxChannelResponse> {
        return try client.send(operation: "DeleteApnsVoipSandboxChannel", path: "/v1/apps/{application-id}/channels/apns_voip_sandbox", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an application.
    public func deleteApp(_ input: DeleteAppRequest) throws -> Future<DeleteAppResponse> {
        return try client.send(operation: "DeleteApp", path: "/v1/apps/{application-id}", httpMethod: "DELETE", input: input)
    }

    ///  Disables the Baidu channel for an application and deletes any existing settings for the channel.
    public func deleteBaiduChannel(_ input: DeleteBaiduChannelRequest) throws -> Future<DeleteBaiduChannelResponse> {
        return try client.send(operation: "DeleteBaiduChannel", path: "/v1/apps/{application-id}/channels/baidu", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a campaign from an application.
    public func deleteCampaign(_ input: DeleteCampaignRequest) throws -> Future<DeleteCampaignResponse> {
        return try client.send(operation: "DeleteCampaign", path: "/v1/apps/{application-id}/campaigns/{campaign-id}", httpMethod: "DELETE", input: input)
    }

    ///  Disables the email channel for an application and deletes any existing settings for the channel.
    public func deleteEmailChannel(_ input: DeleteEmailChannelRequest) throws -> Future<DeleteEmailChannelResponse> {
        return try client.send(operation: "DeleteEmailChannel", path: "/v1/apps/{application-id}/channels/email", httpMethod: "DELETE", input: input)
    }

    ///  Deletes an endpoint from an application.
    public func deleteEndpoint(_ input: DeleteEndpointRequest) throws -> Future<DeleteEndpointResponse> {
        return try client.send(operation: "DeleteEndpoint", path: "/v1/apps/{application-id}/endpoints/{endpoint-id}", httpMethod: "DELETE", input: input)
    }

    ///  Deletes the event stream for an application.
    public func deleteEventStream(_ input: DeleteEventStreamRequest) throws -> Future<DeleteEventStreamResponse> {
        return try client.send(operation: "DeleteEventStream", path: "/v1/apps/{application-id}/eventstream", httpMethod: "DELETE", input: input)
    }

    ///  Disables the GCM channel for an application and deletes any existing settings for the channel.
    public func deleteGcmChannel(_ input: DeleteGcmChannelRequest) throws -> Future<DeleteGcmChannelResponse> {
        return try client.send(operation: "DeleteGcmChannel", path: "/v1/apps/{application-id}/channels/gcm", httpMethod: "DELETE", input: input)
    }

    ///  Deletes a segment from an application.
    public func deleteSegment(_ input: DeleteSegmentRequest) throws -> Future<DeleteSegmentResponse> {
        return try client.send(operation: "DeleteSegment", path: "/v1/apps/{application-id}/segments/{segment-id}", httpMethod: "DELETE", input: input)
    }

    ///  Disables the SMS channel for an application and deletes any existing settings for the channel.
    public func deleteSmsChannel(_ input: DeleteSmsChannelRequest) throws -> Future<DeleteSmsChannelResponse> {
        return try client.send(operation: "DeleteSmsChannel", path: "/v1/apps/{application-id}/channels/sms", httpMethod: "DELETE", input: input)
    }

    ///  Deletes all the endpoints that are associated with a specific user ID.
    public func deleteUserEndpoints(_ input: DeleteUserEndpointsRequest) throws -> Future<DeleteUserEndpointsResponse> {
        return try client.send(operation: "DeleteUserEndpoints", path: "/v1/apps/{application-id}/users/{user-id}", httpMethod: "DELETE", input: input)
    }

    ///  Disables the voice channel for an application and deletes any existing settings for the channel.
    public func deleteVoiceChannel(_ input: DeleteVoiceChannelRequest) throws -> Future<DeleteVoiceChannelResponse> {
        return try client.send(operation: "DeleteVoiceChannel", path: "/v1/apps/{application-id}/channels/voice", httpMethod: "DELETE", input: input)
    }

    ///  Retrieves information about the status and settings of the ADM channel for an application.
    public func getAdmChannel(_ input: GetAdmChannelRequest) throws -> Future<GetAdmChannelResponse> {
        return try client.send(operation: "GetAdmChannel", path: "/v1/apps/{application-id}/channels/adm", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of the APNs channel for an application.
    public func getApnsChannel(_ input: GetApnsChannelRequest) throws -> Future<GetApnsChannelResponse> {
        return try client.send(operation: "GetApnsChannel", path: "/v1/apps/{application-id}/channels/apns", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of the APNs sandbox channel for an application.
    public func getApnsSandboxChannel(_ input: GetApnsSandboxChannelRequest) throws -> Future<GetApnsSandboxChannelResponse> {
        return try client.send(operation: "GetApnsSandboxChannel", path: "/v1/apps/{application-id}/channels/apns_sandbox", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of the APNs VoIP channel for an application.
    public func getApnsVoipChannel(_ input: GetApnsVoipChannelRequest) throws -> Future<GetApnsVoipChannelResponse> {
        return try client.send(operation: "GetApnsVoipChannel", path: "/v1/apps/{application-id}/channels/apns_voip", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of the APNs VoIP sandbox channel for an application.
    public func getApnsVoipSandboxChannel(_ input: GetApnsVoipSandboxChannelRequest) throws -> Future<GetApnsVoipSandboxChannelResponse> {
        return try client.send(operation: "GetApnsVoipSandboxChannel", path: "/v1/apps/{application-id}/channels/apns_voip_sandbox", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about an application.
    public func getApp(_ input: GetAppRequest) throws -> Future<GetAppResponse> {
        return try client.send(operation: "GetApp", path: "/v1/apps/{application-id}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the settings for an application.
    public func getApplicationSettings(_ input: GetApplicationSettingsRequest) throws -> Future<GetApplicationSettingsResponse> {
        return try client.send(operation: "GetApplicationSettings", path: "/v1/apps/{application-id}/settings", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about all of your applications.
    public func getApps(_ input: GetAppsRequest) throws -> Future<GetAppsResponse> {
        return try client.send(operation: "GetApps", path: "/v1/apps", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of the Baidu Cloud Push channel for an application.
    public func getBaiduChannel(_ input: GetBaiduChannelRequest) throws -> Future<GetBaiduChannelResponse> {
        return try client.send(operation: "GetBaiduChannel", path: "/v1/apps/{application-id}/channels/baidu", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status, configuration, and other settings for a campaign.
    public func getCampaign(_ input: GetCampaignRequest) throws -> Future<GetCampaignResponse> {
        return try client.send(operation: "GetCampaign", path: "/v1/apps/{application-id}/campaigns/{campaign-id}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the activity performed by a campaign.
    public func getCampaignActivities(_ input: GetCampaignActivitiesRequest) throws -> Future<GetCampaignActivitiesResponse> {
        return try client.send(operation: "GetCampaignActivities", path: "/v1/apps/{application-id}/campaigns/{campaign-id}/activities", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status, configuration, and other settings for a specific version of a campaign.
    public func getCampaignVersion(_ input: GetCampaignVersionRequest) throws -> Future<GetCampaignVersionResponse> {
        return try client.send(operation: "GetCampaignVersion", path: "/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status, configuration, and other settings for all versions of a specific campaign.
    public func getCampaignVersions(_ input: GetCampaignVersionsRequest) throws -> Future<GetCampaignVersionsResponse> {
        return try client.send(operation: "GetCampaignVersions", path: "/v1/apps/{application-id}/campaigns/{campaign-id}/versions", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status, configuration, and other settings for all the campaigns that are associated with an application.
    public func getCampaigns(_ input: GetCampaignsRequest) throws -> Future<GetCampaignsResponse> {
        return try client.send(operation: "GetCampaigns", path: "/v1/apps/{application-id}/campaigns", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the history and status of each channel for an application.
    public func getChannels(_ input: GetChannelsRequest) throws -> Future<GetChannelsResponse> {
        return try client.send(operation: "GetChannels", path: "/v1/apps/{application-id}/channels", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of the email channel for an application.
    public func getEmailChannel(_ input: GetEmailChannelRequest) throws -> Future<GetEmailChannelResponse> {
        return try client.send(operation: "GetEmailChannel", path: "/v1/apps/{application-id}/channels/email", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the settings and attributes of a specific endpoint for an application.
    public func getEndpoint(_ input: GetEndpointRequest) throws -> Future<GetEndpointResponse> {
        return try client.send(operation: "GetEndpoint", path: "/v1/apps/{application-id}/endpoints/{endpoint-id}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the event stream settings for an application.
    public func getEventStream(_ input: GetEventStreamRequest) throws -> Future<GetEventStreamResponse> {
        return try client.send(operation: "GetEventStream", path: "/v1/apps/{application-id}/eventstream", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of a specific export job for an application.
    public func getExportJob(_ input: GetExportJobRequest) throws -> Future<GetExportJobResponse> {
        return try client.send(operation: "GetExportJob", path: "/v1/apps/{application-id}/jobs/export/{job-id}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of all the export jobs for an application.
    public func getExportJobs(_ input: GetExportJobsRequest) throws -> Future<GetExportJobsResponse> {
        return try client.send(operation: "GetExportJobs", path: "/v1/apps/{application-id}/jobs/export", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of the GCM channel for an application.
    public func getGcmChannel(_ input: GetGcmChannelRequest) throws -> Future<GetGcmChannelResponse> {
        return try client.send(operation: "GetGcmChannel", path: "/v1/apps/{application-id}/channels/gcm", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of a specific import job for an application.
    public func getImportJob(_ input: GetImportJobRequest) throws -> Future<GetImportJobResponse> {
        return try client.send(operation: "GetImportJob", path: "/v1/apps/{application-id}/jobs/import/{job-id}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of all the import jobs for an application.
    public func getImportJobs(_ input: GetImportJobsRequest) throws -> Future<GetImportJobsResponse> {
        return try client.send(operation: "GetImportJobs", path: "/v1/apps/{application-id}/jobs/import", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the configuration, dimension, and other settings for a specific segment that's associated with an application.
    public func getSegment(_ input: GetSegmentRequest) throws -> Future<GetSegmentResponse> {
        return try client.send(operation: "GetSegment", path: "/v1/apps/{application-id}/segments/{segment-id}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of the export jobs for a segment.
    public func getSegmentExportJobs(_ input: GetSegmentExportJobsRequest) throws -> Future<GetSegmentExportJobsResponse> {
        return try client.send(operation: "GetSegmentExportJobs", path: "/v1/apps/{application-id}/segments/{segment-id}/jobs/export", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of the import jobs for a segment.
    public func getSegmentImportJobs(_ input: GetSegmentImportJobsRequest) throws -> Future<GetSegmentImportJobsResponse> {
        return try client.send(operation: "GetSegmentImportJobs", path: "/v1/apps/{application-id}/segments/{segment-id}/jobs/import", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the configuration, dimension, and other settings for a specific version of a segment that's associated with an application.
    public func getSegmentVersion(_ input: GetSegmentVersionRequest) throws -> Future<GetSegmentVersionResponse> {
        return try client.send(operation: "GetSegmentVersion", path: "/v1/apps/{application-id}/segments/{segment-id}/versions/{version}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the configuration, dimension, and other settings for all versions of a specific segment that's associated with an application.
    public func getSegmentVersions(_ input: GetSegmentVersionsRequest) throws -> Future<GetSegmentVersionsResponse> {
        return try client.send(operation: "GetSegmentVersions", path: "/v1/apps/{application-id}/segments/{segment-id}/versions", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the configuration, dimension, and other settings for all the segments that are associated with an application.
    public func getSegments(_ input: GetSegmentsRequest) throws -> Future<GetSegmentsResponse> {
        return try client.send(operation: "GetSegments", path: "/v1/apps/{application-id}/segments", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of the SMS channel for an application.
    public func getSmsChannel(_ input: GetSmsChannelRequest) throws -> Future<GetSmsChannelResponse> {
        return try client.send(operation: "GetSmsChannel", path: "/v1/apps/{application-id}/channels/sms", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about all the endpoints that are associated with a specific user ID.
    public func getUserEndpoints(_ input: GetUserEndpointsRequest) throws -> Future<GetUserEndpointsResponse> {
        return try client.send(operation: "GetUserEndpoints", path: "/v1/apps/{application-id}/users/{user-id}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about the status and settings of the voice channel for an application.
    public func getVoiceChannel(_ input: GetVoiceChannelRequest) throws -> Future<GetVoiceChannelResponse> {
        return try client.send(operation: "GetVoiceChannel", path: "/v1/apps/{application-id}/channels/voice", httpMethod: "GET", input: input)
    }

    ///  Retrieves all the tags (keys and values) that are associated with an application, campaign, or segment.
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/v1/tags/{resource-arn}", httpMethod: "GET", input: input)
    }

    ///  Retrieves information about a phone number.
    public func phoneNumberValidate(_ input: PhoneNumberValidateRequest) throws -> Future<PhoneNumberValidateResponse> {
        return try client.send(operation: "PhoneNumberValidate", path: "/v1/phone/number/validate", httpMethod: "POST", input: input)
    }

    ///  Creates a new event stream for an application or updates the settings of an existing event stream for an application.
    public func putEventStream(_ input: PutEventStreamRequest) throws -> Future<PutEventStreamResponse> {
        return try client.send(operation: "PutEventStream", path: "/v1/apps/{application-id}/eventstream", httpMethod: "POST", input: input)
    }

    ///  Creates a new event to record for endpoints, or creates or updates endpoint data that existing events are associated with.
    public func putEvents(_ input: PutEventsRequest) throws -> Future<PutEventsResponse> {
        return try client.send(operation: "PutEvents", path: "/v1/apps/{application-id}/events", httpMethod: "POST", input: input)
    }

    ///  Removes one or more attributes, of the same attribute type, from all the endpoints that are associated with an application.
    public func removeAttributes(_ input: RemoveAttributesRequest) throws -> Future<RemoveAttributesResponse> {
        return try client.send(operation: "RemoveAttributes", path: "/v1/apps/{application-id}/attributes/{attribute-type}", httpMethod: "PUT", input: input)
    }

    ///  Creates and sends a direct message.
    public func sendMessages(_ input: SendMessagesRequest) throws -> Future<SendMessagesResponse> {
        return try client.send(operation: "SendMessages", path: "/v1/apps/{application-id}/messages", httpMethod: "POST", input: input)
    }

    ///  Creates and sends a message to a list of users.
    public func sendUsersMessages(_ input: SendUsersMessagesRequest) throws -> Future<SendUsersMessagesResponse> {
        return try client.send(operation: "SendUsersMessages", path: "/v1/apps/{application-id}/users-messages", httpMethod: "POST", input: input)
    }

    ///  Adds one or more tags (keys and values) to an application, campaign, or segment.
    @discardableResult public func tagResource(_ input: TagResourceRequest) throws -> Future<Void> {
        return try client.send(operation: "TagResource", path: "/v1/tags/{resource-arn}", httpMethod: "POST", input: input)
    }

    ///  Removes one or more tags (keys and values) from an application, campaign, or segment.
    @discardableResult public func untagResource(_ input: UntagResourceRequest) throws -> Future<Void> {
        return try client.send(operation: "UntagResource", path: "/v1/tags/{resource-arn}", httpMethod: "DELETE", input: input)
    }

    ///  Updates the ADM channel settings for an application.
    public func updateAdmChannel(_ input: UpdateAdmChannelRequest) throws -> Future<UpdateAdmChannelResponse> {
        return try client.send(operation: "UpdateAdmChannel", path: "/v1/apps/{application-id}/channels/adm", httpMethod: "PUT", input: input)
    }

    ///  Updates the APNs channel settings for an application.
    public func updateApnsChannel(_ input: UpdateApnsChannelRequest) throws -> Future<UpdateApnsChannelResponse> {
        return try client.send(operation: "UpdateApnsChannel", path: "/v1/apps/{application-id}/channels/apns", httpMethod: "PUT", input: input)
    }

    ///  Updates the APNs sandbox channel settings for an application.
    public func updateApnsSandboxChannel(_ input: UpdateApnsSandboxChannelRequest) throws -> Future<UpdateApnsSandboxChannelResponse> {
        return try client.send(operation: "UpdateApnsSandboxChannel", path: "/v1/apps/{application-id}/channels/apns_sandbox", httpMethod: "PUT", input: input)
    }

    ///  Updates the APNs VoIP channel settings for an application.
    public func updateApnsVoipChannel(_ input: UpdateApnsVoipChannelRequest) throws -> Future<UpdateApnsVoipChannelResponse> {
        return try client.send(operation: "UpdateApnsVoipChannel", path: "/v1/apps/{application-id}/channels/apns_voip", httpMethod: "PUT", input: input)
    }

    ///  Updates the settings for the APNs VoIP sandbox channel for an application.
    public func updateApnsVoipSandboxChannel(_ input: UpdateApnsVoipSandboxChannelRequest) throws -> Future<UpdateApnsVoipSandboxChannelResponse> {
        return try client.send(operation: "UpdateApnsVoipSandboxChannel", path: "/v1/apps/{application-id}/channels/apns_voip_sandbox", httpMethod: "PUT", input: input)
    }

    ///  Updates the settings for an application.
    public func updateApplicationSettings(_ input: UpdateApplicationSettingsRequest) throws -> Future<UpdateApplicationSettingsResponse> {
        return try client.send(operation: "UpdateApplicationSettings", path: "/v1/apps/{application-id}/settings", httpMethod: "PUT", input: input)
    }

    ///  Updates the settings of the Baidu channel for an application.
    public func updateBaiduChannel(_ input: UpdateBaiduChannelRequest) throws -> Future<UpdateBaiduChannelResponse> {
        return try client.send(operation: "UpdateBaiduChannel", path: "/v1/apps/{application-id}/channels/baidu", httpMethod: "PUT", input: input)
    }

    ///  Updates the settings for a campaign.
    public func updateCampaign(_ input: UpdateCampaignRequest) throws -> Future<UpdateCampaignResponse> {
        return try client.send(operation: "UpdateCampaign", path: "/v1/apps/{application-id}/campaigns/{campaign-id}", httpMethod: "PUT", input: input)
    }

    ///  Updates the status and settings of the email channel for an application.
    public func updateEmailChannel(_ input: UpdateEmailChannelRequest) throws -> Future<UpdateEmailChannelResponse> {
        return try client.send(operation: "UpdateEmailChannel", path: "/v1/apps/{application-id}/channels/email", httpMethod: "PUT", input: input)
    }

    ///  Creates a new endpoint for an application or updates the settings and attributes of an existing endpoint for an application. You can also use this operation to define custom attributes (Attributes, Metrics, and UserAttributes properties) for an endpoint.
    public func updateEndpoint(_ input: UpdateEndpointRequest) throws -> Future<UpdateEndpointResponse> {
        return try client.send(operation: "UpdateEndpoint", path: "/v1/apps/{application-id}/endpoints/{endpoint-id}", httpMethod: "PUT", input: input)
    }

    ///   Creates a new batch of endpoints for an application or updates the settings and attributes of a batch of existing endpoints for an application. You can also use this operation to define custom attributes (Attributes, Metrics, and UserAttributes properties) for a batch of endpoints.
    public func updateEndpointsBatch(_ input: UpdateEndpointsBatchRequest) throws -> Future<UpdateEndpointsBatchResponse> {
        return try client.send(operation: "UpdateEndpointsBatch", path: "/v1/apps/{application-id}/endpoints", httpMethod: "PUT", input: input)
    }

    ///  Updates the status and settings of the GCM channel for an application.
    public func updateGcmChannel(_ input: UpdateGcmChannelRequest) throws -> Future<UpdateGcmChannelResponse> {
        return try client.send(operation: "UpdateGcmChannel", path: "/v1/apps/{application-id}/channels/gcm", httpMethod: "PUT", input: input)
    }

    ///  Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.
    public func updateSegment(_ input: UpdateSegmentRequest) throws -> Future<UpdateSegmentResponse> {
        return try client.send(operation: "UpdateSegment", path: "/v1/apps/{application-id}/segments/{segment-id}", httpMethod: "PUT", input: input)
    }

    ///  Updates the status and settings of the SMS channel for an application.
    public func updateSmsChannel(_ input: UpdateSmsChannelRequest) throws -> Future<UpdateSmsChannelResponse> {
        return try client.send(operation: "UpdateSmsChannel", path: "/v1/apps/{application-id}/channels/sms", httpMethod: "PUT", input: input)
    }

    ///  Updates the status and settings of the voice channel for an application.
    public func updateVoiceChannel(_ input: UpdateVoiceChannelRequest) throws -> Future<UpdateVoiceChannelResponse> {
        return try client.send(operation: "UpdateVoiceChannel", path: "/v1/apps/{application-id}/channels/voice", httpMethod: "PUT", input: input)
    }
}
