// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension SageMakerRuntime {

    public struct InvokeEndpointInput: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "Body"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Accept", location: .header(locationName: "Accept"), required: false, type: .string), 
            AWSShapeMember(label: "Body", required: true, type: .blob), 
            AWSShapeMember(label: "ContentType", location: .header(locationName: "Content-Type"), required: false, type: .string), 
            AWSShapeMember(label: "CustomAttributes", location: .header(locationName: "X-Amzn-SageMaker-Custom-Attributes"), required: false, type: .string), 
            AWSShapeMember(label: "EndpointName", location: .uri(locationName: "EndpointName"), required: true, type: .string)
        ]

        /// The desired MIME type of the inference in the response.
        public let accept: String?
        /// Provides input data, in the format specified in the ContentType request header. Amazon SageMaker passes all of the data in the body to the model.  For information about the format of the request body, see Common Data Formats—Inference.
        public let body: Data
        /// The MIME type of the input data in the request body.
        public let contentType: String?
        public let customAttributes: String?
        /// The name of the endpoint that you specified when you created the endpoint using the CreateEndpoint API. 
        public let endpointName: String

        public init(accept: String? = nil, body: Data, contentType: String? = nil, customAttributes: String? = nil, endpointName: String) {
            self.accept = accept
            self.body = body
            self.contentType = contentType
            self.customAttributes = customAttributes
            self.endpointName = endpointName
        }

        public func validate(name: String) throws {
            try validate(accept, name:"accept", parent: name, max: 1024)
            try validate(body, name:"body", parent: name, max: 5242880)
            try validate(contentType, name:"contentType", parent: name, max: 1024)
            try validate(customAttributes, name:"customAttributes", parent: name, max: 1024)
            try validate(endpointName, name:"endpointName", parent: name, max: 63)
            try validate(endpointName, name:"endpointName", parent: name, pattern: "^[a-zA-Z0-9](-*[a-zA-Z0-9])*")
        }

        private enum CodingKeys: String, CodingKey {
            case accept = "Accept"
            case body = "Body"
            case contentType = "Content-Type"
            case customAttributes = "X-Amzn-SageMaker-Custom-Attributes"
            case endpointName = "EndpointName"
        }
    }

    public struct InvokeEndpointOutput: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "Body"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Body", required: true, type: .blob), 
            AWSShapeMember(label: "ContentType", location: .header(locationName: "Content-Type"), required: false, type: .string), 
            AWSShapeMember(label: "CustomAttributes", location: .header(locationName: "X-Amzn-SageMaker-Custom-Attributes"), required: false, type: .string), 
            AWSShapeMember(label: "InvokedProductionVariant", location: .header(locationName: "x-Amzn-Invoked-Production-Variant"), required: false, type: .string)
        ]

        /// Includes the inference provided by the model. For information about the format of the response body, see Common Data Formats—Inference.
        public let body: Data
        /// The MIME type of the inference returned in the response body.
        public let contentType: String?
        public let customAttributes: String?
        /// Identifies the production variant that was invoked.
        public let invokedProductionVariant: String?

        public init(body: Data, contentType: String? = nil, customAttributes: String? = nil, invokedProductionVariant: String? = nil) {
            self.body = body
            self.contentType = contentType
            self.customAttributes = customAttributes
            self.invokedProductionVariant = invokedProductionVariant
        }

        private enum CodingKeys: String, CodingKey {
            case body = "Body"
            case contentType = "Content-Type"
            case customAttributes = "X-Amzn-SageMaker-Custom-Attributes"
            case invokedProductionVariant = "x-Amzn-Invoked-Production-Variant"
        }
    }
}
