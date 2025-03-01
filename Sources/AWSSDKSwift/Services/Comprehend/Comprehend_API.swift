// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore
import NIO

/**
Amazon Comprehend is an AWS service for gaining insight into the content of documents. Use these actions to determine the topics contained in your documents, the topics they discuss, the predominant sentiment expressed in them, the predominant language used, and more.
*/
public struct Comprehend {

    let client: AWSClient

    public init(accessKeyId: String? = nil, secretAccessKey: String? = nil, region: AWSSDKSwiftCore.Region? = nil, endpoint: String? = nil) {
        self.client = AWSClient(
            accessKeyId: accessKeyId,
            secretAccessKey: secretAccessKey,
            region: region,
            amzTarget: "Comprehend_20171127",
            service: "comprehend",
            serviceProtocol: ServiceProtocol(type: .json, version: ServiceProtocol.Version(major: 1, minor: 1)),
            apiVersion: "2017-11-27",
            endpoint: endpoint,
            middlewares: [],
            possibleErrorTypes: [ComprehendErrorType.self]
        )
    }

    ///  Determines the dominant language of the input text for a batch of documents. For a list of languages that Amazon Comprehend can detect, see Amazon Comprehend Supported Languages. 
    public func batchDetectDominantLanguage(_ input: BatchDetectDominantLanguageRequest) throws -> Future<BatchDetectDominantLanguageResponse> {
        return try client.send(operation: "BatchDetectDominantLanguage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects the text of a batch of documents for named entities and returns information about them. For more information about named entities, see how-entities 
    public func batchDetectEntities(_ input: BatchDetectEntitiesRequest) throws -> Future<BatchDetectEntitiesResponse> {
        return try client.send(operation: "BatchDetectEntities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detects the key noun phrases found in a batch of documents.
    public func batchDetectKeyPhrases(_ input: BatchDetectKeyPhrasesRequest) throws -> Future<BatchDetectKeyPhrasesResponse> {
        return try client.send(operation: "BatchDetectKeyPhrases", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects a batch of documents and returns an inference of the prevailing sentiment, POSITIVE, NEUTRAL, MIXED, or NEGATIVE, in each one.
    public func batchDetectSentiment(_ input: BatchDetectSentimentRequest) throws -> Future<BatchDetectSentimentResponse> {
        return try client.send(operation: "BatchDetectSentiment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects the text of a batch of documents for the syntax and part of speech of the words in the document and returns information about them. For more information, see how-syntax.
    public func batchDetectSyntax(_ input: BatchDetectSyntaxRequest) throws -> Future<BatchDetectSyntaxResponse> {
        return try client.send(operation: "BatchDetectSyntax", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates a new document classifier that you can use to categorize documents. To create a classifier you provide a set of training documents that labeled with the categories that you want to use. After the classifier is trained you can use it to categorize a set of labeled documents into the categories. For more information, see how-document-classification.
    public func createDocumentClassifier(_ input: CreateDocumentClassifierRequest) throws -> Future<CreateDocumentClassifierResponse> {
        return try client.send(operation: "CreateDocumentClassifier", path: "/", httpMethod: "POST", input: input)
    }

    ///  Creates an entity recognizer using submitted files. After your CreateEntityRecognizer request is submitted, you can check job status using the API. 
    public func createEntityRecognizer(_ input: CreateEntityRecognizerRequest) throws -> Future<CreateEntityRecognizerResponse> {
        return try client.send(operation: "CreateEntityRecognizer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes a previously created document classifier Only those classifiers that are in terminated states (IN_ERROR, TRAINED) will be deleted. If an active inference job is using the model, a ResourceInUseException will be returned. This is an asynchronous action that puts the classifier into a DELETING state, and it is then removed by a background job. Once removed, the classifier disappears from your account and is no longer available for use. 
    public func deleteDocumentClassifier(_ input: DeleteDocumentClassifierRequest) throws -> Future<DeleteDocumentClassifierResponse> {
        return try client.send(operation: "DeleteDocumentClassifier", path: "/", httpMethod: "POST", input: input)
    }

    ///  Deletes an entity recognizer. Only those recognizers that are in terminated states (IN_ERROR, TRAINED) will be deleted. If an active inference job is using the model, a ResourceInUseException will be returned. This is an asynchronous action that puts the recognizer into a DELETING state, and it is then removed by a background job. Once removed, the recognizer disappears from your account and is no longer available for use. 
    public func deleteEntityRecognizer(_ input: DeleteEntityRecognizerRequest) throws -> Future<DeleteEntityRecognizerResponse> {
        return try client.send(operation: "DeleteEntityRecognizer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a document classification job. Use this operation to get the status of a classification job.
    public func describeDocumentClassificationJob(_ input: DescribeDocumentClassificationJobRequest) throws -> Future<DescribeDocumentClassificationJobResponse> {
        return try client.send(operation: "DescribeDocumentClassificationJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a document classifier.
    public func describeDocumentClassifier(_ input: DescribeDocumentClassifierRequest) throws -> Future<DescribeDocumentClassifierResponse> {
        return try client.send(operation: "DescribeDocumentClassifier", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a dominant language detection job. Use this operation to get the status of a detection job.
    public func describeDominantLanguageDetectionJob(_ input: DescribeDominantLanguageDetectionJobRequest) throws -> Future<DescribeDominantLanguageDetectionJobResponse> {
        return try client.send(operation: "DescribeDominantLanguageDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with an entities detection job. Use this operation to get the status of a detection job.
    public func describeEntitiesDetectionJob(_ input: DescribeEntitiesDetectionJobRequest) throws -> Future<DescribeEntitiesDetectionJobResponse> {
        return try client.send(operation: "DescribeEntitiesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Provides details about an entity recognizer including status, S3 buckets containing training data, recognizer metadata, metrics, and so on.
    public func describeEntityRecognizer(_ input: DescribeEntityRecognizerRequest) throws -> Future<DescribeEntityRecognizerResponse> {
        return try client.send(operation: "DescribeEntityRecognizer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a key phrases detection job. Use this operation to get the status of a detection job.
    public func describeKeyPhrasesDetectionJob(_ input: DescribeKeyPhrasesDetectionJobRequest) throws -> Future<DescribeKeyPhrasesDetectionJobResponse> {
        return try client.send(operation: "DescribeKeyPhrasesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a sentiment detection job. Use this operation to get the status of a detection job.
    public func describeSentimentDetectionJob(_ input: DescribeSentimentDetectionJobRequest) throws -> Future<DescribeSentimentDetectionJobResponse> {
        return try client.send(operation: "DescribeSentimentDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets the properties associated with a topic detection job. Use this operation to get the status of a detection job.
    public func describeTopicsDetectionJob(_ input: DescribeTopicsDetectionJobRequest) throws -> Future<DescribeTopicsDetectionJobResponse> {
        return try client.send(operation: "DescribeTopicsDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Determines the dominant language of the input text. For a list of languages that Amazon Comprehend can detect, see Amazon Comprehend Supported Languages. 
    public func detectDominantLanguage(_ input: DetectDominantLanguageRequest) throws -> Future<DetectDominantLanguageResponse> {
        return try client.send(operation: "DetectDominantLanguage", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects text for named entities, and returns information about them. For more information, about named entities, see how-entities. 
    public func detectEntities(_ input: DetectEntitiesRequest) throws -> Future<DetectEntitiesResponse> {
        return try client.send(operation: "DetectEntities", path: "/", httpMethod: "POST", input: input)
    }

    ///  Detects the key noun phrases found in the text. 
    public func detectKeyPhrases(_ input: DetectKeyPhrasesRequest) throws -> Future<DetectKeyPhrasesResponse> {
        return try client.send(operation: "DetectKeyPhrases", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects text and returns an inference of the prevailing sentiment (POSITIVE, NEUTRAL, MIXED, or NEGATIVE). 
    public func detectSentiment(_ input: DetectSentimentRequest) throws -> Future<DetectSentimentResponse> {
        return try client.send(operation: "DetectSentiment", path: "/", httpMethod: "POST", input: input)
    }

    ///  Inspects text for syntax and the part of speech of words in the document. For more information, how-syntax.
    public func detectSyntax(_ input: DetectSyntaxRequest) throws -> Future<DetectSyntaxResponse> {
        return try client.send(operation: "DetectSyntax", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the documentation classification jobs that you have submitted.
    public func listDocumentClassificationJobs(_ input: ListDocumentClassificationJobsRequest) throws -> Future<ListDocumentClassificationJobsResponse> {
        return try client.send(operation: "ListDocumentClassificationJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the document classifiers that you have created.
    public func listDocumentClassifiers(_ input: ListDocumentClassifiersRequest) throws -> Future<ListDocumentClassifiersResponse> {
        return try client.send(operation: "ListDocumentClassifiers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the dominant language detection jobs that you have submitted.
    public func listDominantLanguageDetectionJobs(_ input: ListDominantLanguageDetectionJobsRequest) throws -> Future<ListDominantLanguageDetectionJobsResponse> {
        return try client.send(operation: "ListDominantLanguageDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the entity detection jobs that you have submitted.
    public func listEntitiesDetectionJobs(_ input: ListEntitiesDetectionJobsRequest) throws -> Future<ListEntitiesDetectionJobsResponse> {
        return try client.send(operation: "ListEntitiesDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the properties of all entity recognizers that you created, including recognizers currently in training. Allows you to filter the list of recognizers based on criteria such as status and submission time. This call returns up to 500 entity recognizers in the list, with a default number of 100 recognizers in the list. The results of this list are not in any particular order. Please get the list and sort locally if needed.
    public func listEntityRecognizers(_ input: ListEntityRecognizersRequest) throws -> Future<ListEntityRecognizersResponse> {
        return try client.send(operation: "ListEntityRecognizers", path: "/", httpMethod: "POST", input: input)
    }

    ///  Get a list of key phrase detection jobs that you have submitted.
    public func listKeyPhrasesDetectionJobs(_ input: ListKeyPhrasesDetectionJobsRequest) throws -> Future<ListKeyPhrasesDetectionJobsResponse> {
        return try client.send(operation: "ListKeyPhrasesDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of sentiment detection jobs that you have submitted.
    public func listSentimentDetectionJobs(_ input: ListSentimentDetectionJobsRequest) throws -> Future<ListSentimentDetectionJobsResponse> {
        return try client.send(operation: "ListSentimentDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Lists all tags associated with a given Amazon Comprehend resource. 
    public func listTagsForResource(_ input: ListTagsForResourceRequest) throws -> Future<ListTagsForResourceResponse> {
        return try client.send(operation: "ListTagsForResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Gets a list of the topic detection jobs that you have submitted.
    public func listTopicsDetectionJobs(_ input: ListTopicsDetectionJobsRequest) throws -> Future<ListTopicsDetectionJobsResponse> {
        return try client.send(operation: "ListTopicsDetectionJobs", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous document classification job. Use the operation to track the progress of the job.
    public func startDocumentClassificationJob(_ input: StartDocumentClassificationJobRequest) throws -> Future<StartDocumentClassificationJobResponse> {
        return try client.send(operation: "StartDocumentClassificationJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous dominant language detection job for a collection of documents. Use the operation to track the status of a job.
    public func startDominantLanguageDetectionJob(_ input: StartDominantLanguageDetectionJobRequest) throws -> Future<StartDominantLanguageDetectionJobResponse> {
        return try client.send(operation: "StartDominantLanguageDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous entity detection job for a collection of documents. Use the operation to track the status of a job. This API can be used for either standard entity detection or custom entity recognition. In order to be used for custom entity recognition, the optional EntityRecognizerArn must be used in order to provide access to the recognizer being used to detect the custom entity.
    public func startEntitiesDetectionJob(_ input: StartEntitiesDetectionJobRequest) throws -> Future<StartEntitiesDetectionJobResponse> {
        return try client.send(operation: "StartEntitiesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous key phrase detection job for a collection of documents. Use the operation to track the status of a job.
    public func startKeyPhrasesDetectionJob(_ input: StartKeyPhrasesDetectionJobRequest) throws -> Future<StartKeyPhrasesDetectionJobResponse> {
        return try client.send(operation: "StartKeyPhrasesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous sentiment detection job for a collection of documents. use the operation to track the status of a job.
    public func startSentimentDetectionJob(_ input: StartSentimentDetectionJobRequest) throws -> Future<StartSentimentDetectionJobResponse> {
        return try client.send(operation: "StartSentimentDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Starts an asynchronous topic detection job. Use the DescribeTopicDetectionJob operation to track the status of a job.
    public func startTopicsDetectionJob(_ input: StartTopicsDetectionJobRequest) throws -> Future<StartTopicsDetectionJobResponse> {
        return try client.send(operation: "StartTopicsDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a dominant language detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopDominantLanguageDetectionJob(_ input: StopDominantLanguageDetectionJobRequest) throws -> Future<StopDominantLanguageDetectionJobResponse> {
        return try client.send(operation: "StopDominantLanguageDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops an entities detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopEntitiesDetectionJob(_ input: StopEntitiesDetectionJobRequest) throws -> Future<StopEntitiesDetectionJobResponse> {
        return try client.send(operation: "StopEntitiesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a key phrases detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopKeyPhrasesDetectionJob(_ input: StopKeyPhrasesDetectionJobRequest) throws -> Future<StopKeyPhrasesDetectionJobResponse> {
        return try client.send(operation: "StopKeyPhrasesDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a sentiment detection job in progress. If the job state is IN_PROGRESS the job is marked for termination and put into the STOP_REQUESTED state. If the job completes before it can be stopped, it is put into the COMPLETED state; otherwise the job is be stopped and put into the STOPPED state. If the job is in the COMPLETED or FAILED state when you call the StopDominantLanguageDetectionJob operation, the operation returns a 400 Internal Request Exception.  When a job is stopped, any documents already processed are written to the output location.
    public func stopSentimentDetectionJob(_ input: StopSentimentDetectionJobRequest) throws -> Future<StopSentimentDetectionJobResponse> {
        return try client.send(operation: "StopSentimentDetectionJob", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops a document classifier training job while in progress. If the training job state is TRAINING, the job is marked for termination and put into the STOP_REQUESTED state. If the training job completes before it can be stopped, it is put into the TRAINED; otherwise the training job is stopped and put into the STOPPED state and the service sends back an HTTP 200 response with an empty HTTP body. 
    public func stopTrainingDocumentClassifier(_ input: StopTrainingDocumentClassifierRequest) throws -> Future<StopTrainingDocumentClassifierResponse> {
        return try client.send(operation: "StopTrainingDocumentClassifier", path: "/", httpMethod: "POST", input: input)
    }

    ///  Stops an entity recognizer training job while in progress. If the training job state is TRAINING, the job is marked for termination and put into the STOP_REQUESTED state. If the training job completes before it can be stopped, it is put into the TRAINED; otherwise the training job is stopped and putted into the STOPPED state and the service sends back an HTTP 200 response with an empty HTTP body.
    public func stopTrainingEntityRecognizer(_ input: StopTrainingEntityRecognizerRequest) throws -> Future<StopTrainingEntityRecognizerResponse> {
        return try client.send(operation: "StopTrainingEntityRecognizer", path: "/", httpMethod: "POST", input: input)
    }

    ///  Associates a specific tag with an Amazon Comprehend resource. A tag is a key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key might be added to a resource to indicate its use by the sales department. 
    public func tagResource(_ input: TagResourceRequest) throws -> Future<TagResourceResponse> {
        return try client.send(operation: "TagResource", path: "/", httpMethod: "POST", input: input)
    }

    ///  Removes a specific tag associated with an Amazon Comprehend resource. 
    public func untagResource(_ input: UntagResourceRequest) throws -> Future<UntagResourceResponse> {
        return try client.send(operation: "UntagResource", path: "/", httpMethod: "POST", input: input)
    }
}
