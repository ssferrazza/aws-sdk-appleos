// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
You can use Code Signing for Amazon FreeRTOS (AWS Signer) to sign code that you created for any of the IoT devices that Amazon Web Services supports. AWS Signer is integrated with Amazon FreeRTOS, AWS Certificate Manager, and AWS CloudTrail. Amazon FreeRTOS customers can use AWS Signer to sign code images before making them available for microcontrollers. You can use ACM to import third-party certificates to be used by AWS Signer. For general information about using AWS Signer, see the Code Signing for Amazon FreeRTOS Developer Guide.
*/
public struct Signer {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "signer",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-08-25",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [SignerErrorType.self]
        )
    }

    ///  Changes the state of an ACTIVE signing profile to CANCELED. A canceled profile is still viewable with the ListSigningProfiles operation, but it cannot perform new signing jobs, and is deleted two years after cancelation.
    @discardableResult public func cancelSigningProfile(_ input: CancelSigningProfileRequest) throws -> Future<Void> {
        return try client.send(operation: "CancelSigningProfile", path: "/signing-profiles/{profileName}", httpMethod: "DELETE", input: input)
    }

    ///  Returns information about a specific code signing job. You specify the job by using the jobId value that is returned by the StartSigningJob operation. 
    public func describeSigningJob(_ input: DescribeSigningJobRequest) throws -> Future<DescribeSigningJobResponse> {
        return try client.send(operation: "DescribeSigningJob", path: "/signing-jobs/{jobId}", httpMethod: "GET", input: input)
    }

    ///  Returns information on a specific signing platform.
    public func getSigningPlatform(_ input: GetSigningPlatformRequest) throws -> Future<GetSigningPlatformResponse> {
        return try client.send(operation: "GetSigningPlatform", path: "/signing-platforms/{platformId}", httpMethod: "GET", input: input)
    }

    ///  Returns information on a specific signing profile.
    public func getSigningProfile(_ input: GetSigningProfileRequest) throws -> Future<GetSigningProfileResponse> {
        return try client.send(operation: "GetSigningProfile", path: "/signing-profiles/{profileName}", httpMethod: "GET", input: input)
    }

    ///  Lists all your signing jobs. You can use the maxResults parameter to limit the number of signing jobs that are returned in the response. If additional jobs remain to be listed, AWS Signer returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that AWS Signer returns in the nextToken parameter until all of your signing jobs have been returned. 
    public func listSigningJobs(_ input: ListSigningJobsRequest) throws -> Future<ListSigningJobsResponse> {
        return try client.send(operation: "ListSigningJobs", path: "/signing-jobs", httpMethod: "GET", input: input)
    }

    ///  Lists all signing platforms available in AWS Signer that match the request parameters. If additional jobs remain to be listed, AWS Signer returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that AWS Signer returns in the nextToken parameter until all of your signing jobs have been returned.
    public func listSigningPlatforms(_ input: ListSigningPlatformsRequest) throws -> Future<ListSigningPlatformsResponse> {
        return try client.send(operation: "ListSigningPlatforms", path: "/signing-platforms", httpMethod: "GET", input: input)
    }

    ///  Lists all available signing profiles in your AWS account. Returns only profiles with an ACTIVE status unless the includeCanceled request field is set to true. If additional jobs remain to be listed, AWS Signer returns a nextToken value. Use this value in subsequent calls to ListSigningJobs to fetch the remaining values. You can continue calling ListSigningJobs with your maxResults parameter and with new values that AWS Signer returns in the nextToken parameter until all of your signing jobs have been returned.
    public func listSigningProfiles(_ input: ListSigningProfilesRequest) throws -> Future<ListSigningProfilesResponse> {
        return try client.send(operation: "ListSigningProfiles", path: "/signing-profiles", httpMethod: "GET", input: input)
    }

    ///  Creates a signing profile. A signing profile is an AWS Signer template that can be used to carry out a pre-defined signing job. For more information, see http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html 
    public func putSigningProfile(_ input: PutSigningProfileRequest) throws -> Future<PutSigningProfileResponse> {
        return try client.send(operation: "PutSigningProfile", path: "/signing-profiles/{profileName}", httpMethod: "PUT", input: input)
    }

    ///  Initiates a signing job to be performed on the code provided. Signing jobs are viewable by the ListSigningJobs operation for two years after they are performed. Note the following requirements:     You must create an Amazon S3 source bucket. For more information, see Create a Bucket in the Amazon S3 Getting Started Guide.    Your S3 source bucket must be version enabled.   You must create an S3 destination bucket. AWS Signer uses your S3 destination bucket to write your signed code.   You specify the name of the source and destination buckets when calling the StartSigningJob operation.   You must also specify a request token that identifies your request to AWS Signer.    You can call the DescribeSigningJob and the ListSigningJobs actions after you call StartSigningJob. For a Java example that shows how to use this action, see http://docs.aws.amazon.com/acm/latest/userguide/ 
    public func startSigningJob(_ input: StartSigningJobRequest) throws -> Future<StartSigningJobResponse> {
        return try client.send(operation: "StartSigningJob", path: "/signing-jobs", httpMethod: "POST", input: input)
    }
}
