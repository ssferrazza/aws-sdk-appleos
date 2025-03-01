// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
 The Amazon SageMaker runtime API. 
*/
public struct SageMakerRuntime {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            service: "runtime.sagemaker",
            serviceProtocol: ServiceProtocol(type: .restjson, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-05-13",
            endpoint: endpoint,
            serviceEndpoints: ["us-east-1-fips": "runtime-fips.sagemaker.us-east-1.amazonaws.com", "us-east-2-fips": "runtime-fips.sagemaker.us-east-2.amazonaws.com", "us-west-1-fips": "runtime-fips.sagemaker.us-west-1.amazonaws.com", "us-west-2-fips": "runtime-fips.sagemaker.us-west-2.amazonaws.com"],
            middlewares: [],
            possibleErrorTypes: [SageMakerRuntimeErrorType.self]
        )
    }

    ///  After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint.  For an overview of Amazon SageMaker, see How It Works.  Amazon SageMaker strips all POST headers except those supported by the API. Amazon SageMaker might add additional headers. You should not rely on the behavior of headers outside those enumerated in the request syntax.  Cals to InvokeEndpoint are authenticated by using AWS Signature Version 4. For information, see Authenticating Requests (AWS Signature Version 4) in the Amazon S3 API Reference.  Endpoints are scoped to an individual account, and are not public. The URL does not contain the account ID, but Amazon SageMaker determines the account ID from the authentication token that is supplied by the caller. 
    public func invokeEndpoint(_ input: InvokeEndpointInput) throws -> Future<InvokeEndpointOutput> {
        return try client.send(operation: "InvokeEndpoint", path: "/endpoints/{EndpointName}/invocations", httpMethod: "POST", input: input)
    }
}
