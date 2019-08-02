// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension IoTJobsDataPlane {

    public struct DescribeJobExecutionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "executionNumber", location: .querystring(locationName: "executionNumber"), required: false, type: .long), 
            AWSShapeMember(label: "includeJobDocument", location: .querystring(locationName: "includeJobDocument"), required: false, type: .boolean), 
            AWSShapeMember(label: "jobId", location: .uri(locationName: "jobId"), required: true, type: .string), 
            AWSShapeMember(label: "thingName", location: .uri(locationName: "thingName"), required: true, type: .string)
        ]

        /// Optional. A number that identifies a particular job execution on a particular device. If not specified, the latest job execution is returned.
        public let executionNumber: Int64?
        /// Optional. When set to true, the response contains the job document. The default is false.
        public let includeJobDocument: Bool?
        /// The unique identifier assigned to this job when it was created.
        public let jobId: String
        /// The thing name associated with the device the job execution is running on.
        public let thingName: String

        public init(executionNumber: Int64? = nil, includeJobDocument: Bool? = nil, jobId: String, thingName: String) {
            self.executionNumber = executionNumber
            self.includeJobDocument = includeJobDocument
            self.jobId = jobId
            self.thingName = thingName
        }

        public func validate() throws {
            try validate(jobId, name:"jobId", pattern: "[a-zA-Z0-9_-]+|^\\$next")
            try validate(thingName, name:"thingName", max: 128)
            try validate(thingName, name:"thingName", min: 1)
            try validate(thingName, name:"thingName", pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case executionNumber = "executionNumber"
            case includeJobDocument = "includeJobDocument"
            case jobId = "jobId"
            case thingName = "thingName"
        }
    }

    public struct DescribeJobExecutionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "execution", required: false, type: .structure)
        ]

        /// Contains data about a job execution.
        public let execution: JobExecution?

        public init(execution: JobExecution? = nil) {
            self.execution = execution
        }

        private enum CodingKeys: String, CodingKey {
            case execution = "execution"
        }
    }

    public struct GetPendingJobExecutionsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "thingName", location: .uri(locationName: "thingName"), required: true, type: .string)
        ]

        /// The name of the thing that is executing the job.
        public let thingName: String

        public init(thingName: String) {
            self.thingName = thingName
        }

        public func validate() throws {
            try validate(thingName, name:"thingName", max: 128)
            try validate(thingName, name:"thingName", min: 1)
            try validate(thingName, name:"thingName", pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case thingName = "thingName"
        }
    }

    public struct GetPendingJobExecutionsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "inProgressJobs", required: false, type: .list), 
            AWSShapeMember(label: "queuedJobs", required: false, type: .list)
        ]

        /// A list of JobExecutionSummary objects with status IN_PROGRESS.
        public let inProgressJobs: [JobExecutionSummary]?
        /// A list of JobExecutionSummary objects with status QUEUED.
        public let queuedJobs: [JobExecutionSummary]?

        public init(inProgressJobs: [JobExecutionSummary]? = nil, queuedJobs: [JobExecutionSummary]? = nil) {
            self.inProgressJobs = inProgressJobs
            self.queuedJobs = queuedJobs
        }

        private enum CodingKeys: String, CodingKey {
            case inProgressJobs = "inProgressJobs"
            case queuedJobs = "queuedJobs"
        }
    }

    public struct JobExecution: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "approximateSecondsBeforeTimedOut", required: false, type: .long), 
            AWSShapeMember(label: "executionNumber", required: false, type: .long), 
            AWSShapeMember(label: "jobDocument", required: false, type: .string), 
            AWSShapeMember(label: "jobId", required: false, type: .string), 
            AWSShapeMember(label: "lastUpdatedAt", required: false, type: .long), 
            AWSShapeMember(label: "queuedAt", required: false, type: .long), 
            AWSShapeMember(label: "startedAt", required: false, type: .long), 
            AWSShapeMember(label: "status", required: false, type: .enum), 
            AWSShapeMember(label: "statusDetails", required: false, type: .map), 
            AWSShapeMember(label: "thingName", required: false, type: .string), 
            AWSShapeMember(label: "versionNumber", required: false, type: .long)
        ]

        /// The estimated number of seconds that remain before the job execution status will be changed to TIMED_OUT.
        public let approximateSecondsBeforeTimedOut: Int64?
        /// A number that identifies a particular job execution on a particular device. It can be used later in commands that return or update job execution information.
        public let executionNumber: Int64?
        /// The content of the job document.
        public let jobDocument: String?
        /// The unique identifier you assigned to this job when it was created.
        public let jobId: String?
        /// The time, in milliseconds since the epoch, when the job execution was last updated. 
        public let lastUpdatedAt: Int64?
        /// The time, in milliseconds since the epoch, when the job execution was enqueued.
        public let queuedAt: Int64?
        /// The time, in milliseconds since the epoch, when the job execution was started.
        public let startedAt: Int64?
        /// The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED", "REJECTED", or "REMOVED".
        public let status: JobExecutionStatus?
        /// A collection of name/value pairs that describe the status of the job execution.
        public let statusDetails: [String: String]?
        /// The name of the thing that is executing the job.
        public let thingName: String?
        /// The version of the job execution. Job execution versions are incremented each time they are updated by a device.
        public let versionNumber: Int64?

        public init(approximateSecondsBeforeTimedOut: Int64? = nil, executionNumber: Int64? = nil, jobDocument: String? = nil, jobId: String? = nil, lastUpdatedAt: Int64? = nil, queuedAt: Int64? = nil, startedAt: Int64? = nil, status: JobExecutionStatus? = nil, statusDetails: [String: String]? = nil, thingName: String? = nil, versionNumber: Int64? = nil) {
            self.approximateSecondsBeforeTimedOut = approximateSecondsBeforeTimedOut
            self.executionNumber = executionNumber
            self.jobDocument = jobDocument
            self.jobId = jobId
            self.lastUpdatedAt = lastUpdatedAt
            self.queuedAt = queuedAt
            self.startedAt = startedAt
            self.status = status
            self.statusDetails = statusDetails
            self.thingName = thingName
            self.versionNumber = versionNumber
        }

        private enum CodingKeys: String, CodingKey {
            case approximateSecondsBeforeTimedOut = "approximateSecondsBeforeTimedOut"
            case executionNumber = "executionNumber"
            case jobDocument = "jobDocument"
            case jobId = "jobId"
            case lastUpdatedAt = "lastUpdatedAt"
            case queuedAt = "queuedAt"
            case startedAt = "startedAt"
            case status = "status"
            case statusDetails = "statusDetails"
            case thingName = "thingName"
            case versionNumber = "versionNumber"
        }
    }

    public struct JobExecutionState: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "status", required: false, type: .enum), 
            AWSShapeMember(label: "statusDetails", required: false, type: .map), 
            AWSShapeMember(label: "versionNumber", required: false, type: .long)
        ]

        /// The status of the job execution. Can be one of: "QUEUED", "IN_PROGRESS", "FAILED", "SUCCESS", "CANCELED", "REJECTED", or "REMOVED".
        public let status: JobExecutionStatus?
        /// A collection of name/value pairs that describe the status of the job execution.
        public let statusDetails: [String: String]?
        /// The version of the job execution. Job execution versions are incremented each time they are updated by a device.
        public let versionNumber: Int64?

        public init(status: JobExecutionStatus? = nil, statusDetails: [String: String]? = nil, versionNumber: Int64? = nil) {
            self.status = status
            self.statusDetails = statusDetails
            self.versionNumber = versionNumber
        }

        private enum CodingKeys: String, CodingKey {
            case status = "status"
            case statusDetails = "statusDetails"
            case versionNumber = "versionNumber"
        }
    }

    public enum JobExecutionStatus: String, CustomStringConvertible, Codable {
        case queued = "QUEUED"
        case inProgress = "IN_PROGRESS"
        case succeeded = "SUCCEEDED"
        case failed = "FAILED"
        case timedOut = "TIMED_OUT"
        case rejected = "REJECTED"
        case removed = "REMOVED"
        case canceled = "CANCELED"
        public var description: String { return self.rawValue }
    }

    public struct JobExecutionSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "executionNumber", required: false, type: .long), 
            AWSShapeMember(label: "jobId", required: false, type: .string), 
            AWSShapeMember(label: "lastUpdatedAt", required: false, type: .long), 
            AWSShapeMember(label: "queuedAt", required: false, type: .long), 
            AWSShapeMember(label: "startedAt", required: false, type: .long), 
            AWSShapeMember(label: "versionNumber", required: false, type: .long)
        ]

        /// A number that identifies a particular job execution on a particular device.
        public let executionNumber: Int64?
        /// The unique identifier you assigned to this job when it was created.
        public let jobId: String?
        /// The time, in milliseconds since the epoch, when the job execution was last updated.
        public let lastUpdatedAt: Int64?
        /// The time, in milliseconds since the epoch, when the job execution was enqueued.
        public let queuedAt: Int64?
        /// The time, in milliseconds since the epoch, when the job execution started.
        public let startedAt: Int64?
        /// The version of the job execution. Job execution versions are incremented each time AWS IoT Jobs receives an update from a device.
        public let versionNumber: Int64?

        public init(executionNumber: Int64? = nil, jobId: String? = nil, lastUpdatedAt: Int64? = nil, queuedAt: Int64? = nil, startedAt: Int64? = nil, versionNumber: Int64? = nil) {
            self.executionNumber = executionNumber
            self.jobId = jobId
            self.lastUpdatedAt = lastUpdatedAt
            self.queuedAt = queuedAt
            self.startedAt = startedAt
            self.versionNumber = versionNumber
        }

        private enum CodingKeys: String, CodingKey {
            case executionNumber = "executionNumber"
            case jobId = "jobId"
            case lastUpdatedAt = "lastUpdatedAt"
            case queuedAt = "queuedAt"
            case startedAt = "startedAt"
            case versionNumber = "versionNumber"
        }
    }

    public struct StartNextPendingJobExecutionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "statusDetails", required: false, type: .map), 
            AWSShapeMember(label: "stepTimeoutInMinutes", required: false, type: .long), 
            AWSShapeMember(label: "thingName", location: .uri(locationName: "thingName"), required: true, type: .string)
        ]

        /// A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.
        public let statusDetails: [String: String]?
        /// Specifies the amount of time this device has to finish execution of this job. If the job execution status is not set to a terminal state before this timer expires, or before the timer is reset (by calling UpdateJobExecution, setting the status to IN_PROGRESS and specifying a new timeout value in field stepTimeoutInMinutes) the job execution status will be automatically set to TIMED_OUT. Note that setting this timeout has no effect on that job execution timeout which may have been specified when the job was created (CreateJob using field timeoutConfig).
        public let stepTimeoutInMinutes: Int64?
        /// The name of the thing associated with the device.
        public let thingName: String

        public init(statusDetails: [String: String]? = nil, stepTimeoutInMinutes: Int64? = nil, thingName: String) {
            self.statusDetails = statusDetails
            self.stepTimeoutInMinutes = stepTimeoutInMinutes
            self.thingName = thingName
        }

        public func validate() throws {
            try statusDetails?.forEach {
                try validate($0.key, name:"statusDetails[key:]", max: 128)
                try validate($0.key, name:"statusDetails[key:]", min: 1)
                try validate($0.key, name:"statusDetails[key:]", pattern: "[a-zA-Z0-9:_-]+")
                try validate($0.value, name:"statusDetails[:Value]", max: 1024)
                try validate($0.value, name:"statusDetails[:Value]", min: 1)
                try validate($0.value, name:"statusDetails[:Value]", pattern: "[^\\p{C}]*+")
            }
            try validate(thingName, name:"thingName", max: 128)
            try validate(thingName, name:"thingName", min: 1)
            try validate(thingName, name:"thingName", pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case statusDetails = "statusDetails"
            case stepTimeoutInMinutes = "stepTimeoutInMinutes"
            case thingName = "thingName"
        }
    }

    public struct StartNextPendingJobExecutionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "execution", required: false, type: .structure)
        ]

        /// A JobExecution object.
        public let execution: JobExecution?

        public init(execution: JobExecution? = nil) {
            self.execution = execution
        }

        private enum CodingKeys: String, CodingKey {
            case execution = "execution"
        }
    }

    public struct UpdateJobExecutionRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "executionNumber", required: false, type: .long), 
            AWSShapeMember(label: "expectedVersion", required: false, type: .long), 
            AWSShapeMember(label: "includeJobDocument", required: false, type: .boolean), 
            AWSShapeMember(label: "includeJobExecutionState", required: false, type: .boolean), 
            AWSShapeMember(label: "jobId", location: .uri(locationName: "jobId"), required: true, type: .string), 
            AWSShapeMember(label: "status", required: true, type: .enum), 
            AWSShapeMember(label: "statusDetails", required: false, type: .map), 
            AWSShapeMember(label: "stepTimeoutInMinutes", required: false, type: .long), 
            AWSShapeMember(label: "thingName", location: .uri(locationName: "thingName"), required: true, type: .string)
        ]

        /// Optional. A number that identifies a particular job execution on a particular device.
        public let executionNumber: Int64?
        /// Optional. The expected current version of the job execution. Each time you update the job execution, its version is incremented. If the version of the job execution stored in Jobs does not match, the update is rejected with a VersionMismatch error, and an ErrorResponse that contains the current job execution status data is returned. (This makes it unnecessary to perform a separate DescribeJobExecution request in order to obtain the job execution status data.)
        public let expectedVersion: Int64?
        /// Optional. When set to true, the response contains the job document. The default is false.
        public let includeJobDocument: Bool?
        /// Optional. When included and set to true, the response contains the JobExecutionState data. The default is false.
        public let includeJobExecutionState: Bool?
        /// The unique identifier assigned to this job when it was created.
        public let jobId: String
        /// The new status for the job execution (IN_PROGRESS, FAILED, SUCCESS, or REJECTED). This must be specified on every update.
        public let status: JobExecutionStatus
        ///  Optional. A collection of name/value pairs that describe the status of the job execution. If not specified, the statusDetails are unchanged.
        public let statusDetails: [String: String]?
        /// Specifies the amount of time this device has to finish execution of this job. If the job execution status is not set to a terminal state before this timer expires, or before the timer is reset (by again calling UpdateJobExecution, setting the status to IN_PROGRESS and specifying a new timeout value in this field) the job execution status will be automatically set to TIMED_OUT. Note that setting or resetting this timeout has no effect on that job execution timeout which may have been specified when the job was created (CreateJob using field timeoutConfig).
        public let stepTimeoutInMinutes: Int64?
        /// The name of the thing associated with the device.
        public let thingName: String

        public init(executionNumber: Int64? = nil, expectedVersion: Int64? = nil, includeJobDocument: Bool? = nil, includeJobExecutionState: Bool? = nil, jobId: String, status: JobExecutionStatus, statusDetails: [String: String]? = nil, stepTimeoutInMinutes: Int64? = nil, thingName: String) {
            self.executionNumber = executionNumber
            self.expectedVersion = expectedVersion
            self.includeJobDocument = includeJobDocument
            self.includeJobExecutionState = includeJobExecutionState
            self.jobId = jobId
            self.status = status
            self.statusDetails = statusDetails
            self.stepTimeoutInMinutes = stepTimeoutInMinutes
            self.thingName = thingName
        }

        public func validate() throws {
            try validate(jobId, name:"jobId", max: 64)
            try validate(jobId, name:"jobId", min: 1)
            try validate(jobId, name:"jobId", pattern: "[a-zA-Z0-9_-]+")
            try statusDetails?.forEach {
                try validate($0.key, name:"statusDetails[key:]", max: 128)
                try validate($0.key, name:"statusDetails[key:]", min: 1)
                try validate($0.key, name:"statusDetails[key:]", pattern: "[a-zA-Z0-9:_-]+")
                try validate($0.value, name:"statusDetails[:Value]", max: 1024)
                try validate($0.value, name:"statusDetails[:Value]", min: 1)
                try validate($0.value, name:"statusDetails[:Value]", pattern: "[^\\p{C}]*+")
            }
            try validate(thingName, name:"thingName", max: 128)
            try validate(thingName, name:"thingName", min: 1)
            try validate(thingName, name:"thingName", pattern: "[a-zA-Z0-9:_-]+")
        }

        private enum CodingKeys: String, CodingKey {
            case executionNumber = "executionNumber"
            case expectedVersion = "expectedVersion"
            case includeJobDocument = "includeJobDocument"
            case includeJobExecutionState = "includeJobExecutionState"
            case jobId = "jobId"
            case status = "status"
            case statusDetails = "statusDetails"
            case stepTimeoutInMinutes = "stepTimeoutInMinutes"
            case thingName = "thingName"
        }
    }

    public struct UpdateJobExecutionResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "executionState", required: false, type: .structure), 
            AWSShapeMember(label: "jobDocument", required: false, type: .string)
        ]

        /// A JobExecutionState object.
        public let executionState: JobExecutionState?
        /// The contents of the Job Documents.
        public let jobDocument: String?

        public init(executionState: JobExecutionState? = nil, jobDocument: String? = nil) {
            self.executionState = executionState
            self.jobDocument = jobDocument
        }

        private enum CodingKeys: String, CodingKey {
            case executionState = "executionState"
            case jobDocument = "jobDocument"
        }
    }
}
