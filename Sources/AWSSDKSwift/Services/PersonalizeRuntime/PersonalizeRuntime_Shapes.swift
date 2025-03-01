// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension PersonalizeRuntime {

    public struct GetPersonalizedRankingRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "campaignArn", required: true, type: .string), 
            AWSShapeMember(label: "inputList", required: true, type: .list), 
            AWSShapeMember(label: "userId", required: true, type: .string)
        ]

        /// The Amazon Resource Name (ARN) of the campaign to use for generating the personalized ranking.
        public let campaignArn: String
        /// A list of items (itemId's) to rank. If an item was not included in the training dataset, the item is appended to the end of the reranked list.
        public let inputList: [String]
        /// The user for which you want the campaign to provide a personalized ranking.
        public let userId: String

        public init(campaignArn: String, inputList: [String], userId: String) {
            self.campaignArn = campaignArn
            self.inputList = inputList
            self.userId = userId
        }

        public func validate(name: String) throws {
            try validate(campaignArn, name:"campaignArn", parent: name, max: 256)
            try validate(campaignArn, name:"campaignArn", parent: name, pattern: "arn:([a-z\\d-]+):personalize:.*:.*:.+")
            try inputList.forEach {
                try validate($0, name: "inputList[]", parent: name, max: 256)
            }
            try validate(inputList, name:"inputList", parent: name, max: 100)
            try validate(userId, name:"userId", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case campaignArn = "campaignArn"
            case inputList = "inputList"
            case userId = "userId"
        }
    }

    public struct GetPersonalizedRankingResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "personalizedRanking", required: false, type: .list)
        ]

        /// A list of items in order of most likely interest to the user.
        public let personalizedRanking: [PredictedItem]?

        public init(personalizedRanking: [PredictedItem]? = nil) {
            self.personalizedRanking = personalizedRanking
        }

        private enum CodingKeys: String, CodingKey {
            case personalizedRanking = "personalizedRanking"
        }
    }

    public struct GetRecommendationsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "campaignArn", required: true, type: .string), 
            AWSShapeMember(label: "itemId", required: false, type: .string), 
            AWSShapeMember(label: "numResults", required: false, type: .integer), 
            AWSShapeMember(label: "userId", required: false, type: .string)
        ]

        /// The Amazon Resource Name (ARN) of the campaign to use for getting recommendations.
        public let campaignArn: String
        /// The item ID to provide recommendations for. Required for RELATED_ITEMS recipe type.
        public let itemId: String?
        /// The number of results to return. The default is 25. The maximum is 100.
        public let numResults: Int32?
        /// The user ID to provide recommendations for. Required for USER_PERSONALIZATION recipe type.
        public let userId: String?

        public init(campaignArn: String, itemId: String? = nil, numResults: Int32? = nil, userId: String? = nil) {
            self.campaignArn = campaignArn
            self.itemId = itemId
            self.numResults = numResults
            self.userId = userId
        }

        public func validate(name: String) throws {
            try validate(campaignArn, name:"campaignArn", parent: name, max: 256)
            try validate(campaignArn, name:"campaignArn", parent: name, pattern: "arn:([a-z\\d-]+):personalize:.*:.*:.+")
            try validate(itemId, name:"itemId", parent: name, max: 256)
            try validate(numResults, name:"numResults", parent: name, max: 100)
            try validate(numResults, name:"numResults", parent: name, min: 0)
            try validate(userId, name:"userId", parent: name, max: 256)
        }

        private enum CodingKeys: String, CodingKey {
            case campaignArn = "campaignArn"
            case itemId = "itemId"
            case numResults = "numResults"
            case userId = "userId"
        }
    }

    public struct GetRecommendationsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "itemList", required: false, type: .list)
        ]

        /// A list of recommendations.
        public let itemList: [PredictedItem]?

        public init(itemList: [PredictedItem]? = nil) {
            self.itemList = itemList
        }

        private enum CodingKeys: String, CodingKey {
            case itemList = "itemList"
        }
    }

    public struct PredictedItem: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "itemId", required: false, type: .string)
        ]

        /// The recommended item ID.
        public let itemId: String?

        public init(itemId: String? = nil) {
            self.itemId = itemId
        }

        private enum CodingKeys: String, CodingKey {
            case itemId = "itemId"
        }
    }
}
