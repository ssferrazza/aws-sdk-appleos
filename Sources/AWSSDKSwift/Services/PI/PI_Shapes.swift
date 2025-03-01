// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension PI {

    public struct DataPoint: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Timestamp", required: true, type: .timestamp), 
            AWSShapeMember(label: "Value", required: true, type: .double)
        ]

        /// The time, in epoch format, associated with a particular Value.
        public let timestamp: TimeStamp
        /// The actual value associated with a particular Timestamp.
        public let value: Double

        public init(timestamp: TimeStamp, value: Double) {
            self.timestamp = timestamp
            self.value = value
        }

        private enum CodingKeys: String, CodingKey {
            case timestamp = "Timestamp"
            case value = "Value"
        }
    }

    public struct DescribeDimensionKeysRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EndTime", required: true, type: .timestamp), 
            AWSShapeMember(label: "Filter", required: false, type: .map), 
            AWSShapeMember(label: "GroupBy", required: true, type: .structure), 
            AWSShapeMember(label: "Identifier", required: true, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "Metric", required: true, type: .string), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "PartitionBy", required: false, type: .structure), 
            AWSShapeMember(label: "PeriodInSeconds", required: false, type: .integer), 
            AWSShapeMember(label: "ServiceType", required: true, type: .enum), 
            AWSShapeMember(label: "StartTime", required: true, type: .timestamp)
        ]

        /// The date and time specifying the end of the requested time series data. The value specified is exclusive - data points less than (but not equal to) EndTime will be returned. The value for EndTime must be later than the value for StartTime.
        public let endTime: TimeStamp
        /// One or more filters to apply in the request. Restrictions:   Any number of filters by the same dimension, as specified in the GroupBy or Partition parameters.   A single filter for any other dimension in this dimension group.  
        public let filter: [String: String]?
        /// A specification for how to aggregate the data points from a query result. You must specify a valid dimension group. Performance Insights will return all of the dimensions within that group, unless you provide the names of specific dimensions within that group. You can also request that Performance Insights return a limited number of values for a dimension.
        public let groupBy: DimensionGroup
        /// An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source. To use an Amazon RDS instance as a data source, you specify its DbiResourceId value - for example: db-FAIHNTYBKTGAUSUZQYPDS2GW4A 
        public let identifier: String
        /// The maximum number of items to return in the response. If more items exist than the specified MaxRecords value, a pagination token is included in the response so that the remaining results can be retrieved. 
        public let maxResults: Int32?
        /// The name of a Performance Insights metric to be measured. Valid values for Metric are:    db.load.avg - a scaled representation of the number of active sessions for the database engine.    db.sampledload.avg - the raw number of active sessions for the database engine.  
        public let metric: String
        /// An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by MaxRecords.
        public let nextToken: String?
        /// For each dimension specified in GroupBy, specify a secondary dimension to further subdivide the partition keys in the response.
        public let partitionBy: DimensionGroup?
        /// The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400 seconds). Valid values are:    1 (one second)    60 (one minute)    300 (five minutes)    3600 (one hour)    86400 (twenty-four hours)   If you don't specify PeriodInSeconds, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data points in the response.
        public let periodInSeconds: Int32?
        /// The AWS service for which Performance Insights will return metrics. The only valid value for ServiceType is: RDS 
        public let serviceType: ServiceType
        /// The date and time specifying the beginning of the requested time series data. You can't specify a StartTime that's earlier than 7 days ago. The value specified is inclusive - data points equal to or greater than StartTime will be returned. The value for StartTime must be earlier than the value for EndTime.
        public let startTime: TimeStamp

        public init(endTime: TimeStamp, filter: [String: String]? = nil, groupBy: DimensionGroup, identifier: String, maxResults: Int32? = nil, metric: String, nextToken: String? = nil, partitionBy: DimensionGroup? = nil, periodInSeconds: Int32? = nil, serviceType: ServiceType, startTime: TimeStamp) {
            self.endTime = endTime
            self.filter = filter
            self.groupBy = groupBy
            self.identifier = identifier
            self.maxResults = maxResults
            self.metric = metric
            self.nextToken = nextToken
            self.partitionBy = partitionBy
            self.periodInSeconds = periodInSeconds
            self.serviceType = serviceType
            self.startTime = startTime
        }

        public func validate(name: String) throws {
            try groupBy.validate(name: "\(name).groupBy")
            try validate(maxResults, name:"maxResults", parent: name, max: 20)
            try validate(maxResults, name:"maxResults", parent: name, min: 0)
            try partitionBy?.validate(name: "\(name).partitionBy")
        }

        private enum CodingKeys: String, CodingKey {
            case endTime = "EndTime"
            case filter = "Filter"
            case groupBy = "GroupBy"
            case identifier = "Identifier"
            case maxResults = "MaxResults"
            case metric = "Metric"
            case nextToken = "NextToken"
            case partitionBy = "PartitionBy"
            case periodInSeconds = "PeriodInSeconds"
            case serviceType = "ServiceType"
            case startTime = "StartTime"
        }
    }

    public struct DescribeDimensionKeysResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AlignedEndTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "AlignedStartTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "Keys", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "PartitionKeys", required: false, type: .list)
        ]

        /// The end time for the returned dimension keys, after alignment to a granular boundary (as specified by PeriodInSeconds). AlignedEndTime will be greater than or equal to the value of the user-specified Endtime.
        public let alignedEndTime: TimeStamp?
        /// The start time for the returned dimension keys, after alignment to a granular boundary (as specified by PeriodInSeconds). AlignedStartTime will be less than or equal to the value of the user-specified StartTime.
        public let alignedStartTime: TimeStamp?
        /// The dimension keys that were requested.
        public let keys: [DimensionKeyDescription]?
        /// An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by MaxRecords.
        public let nextToken: String?
        /// If PartitionBy was present in the request, PartitionKeys contains the breakdown of dimension keys by the specified partitions.
        public let partitionKeys: [ResponsePartitionKey]?

        public init(alignedEndTime: TimeStamp? = nil, alignedStartTime: TimeStamp? = nil, keys: [DimensionKeyDescription]? = nil, nextToken: String? = nil, partitionKeys: [ResponsePartitionKey]? = nil) {
            self.alignedEndTime = alignedEndTime
            self.alignedStartTime = alignedStartTime
            self.keys = keys
            self.nextToken = nextToken
            self.partitionKeys = partitionKeys
        }

        private enum CodingKeys: String, CodingKey {
            case alignedEndTime = "AlignedEndTime"
            case alignedStartTime = "AlignedStartTime"
            case keys = "Keys"
            case nextToken = "NextToken"
            case partitionKeys = "PartitionKeys"
        }
    }

    public struct DimensionGroup: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Dimensions", required: false, type: .list), 
            AWSShapeMember(label: "Group", required: true, type: .string), 
            AWSShapeMember(label: "Limit", required: false, type: .integer)
        ]

        /// A list of specific dimensions from a dimension group. If this parameter is not present, then it signifies that all of the dimensions in the group were requested, or are present in the response. Valid values for elements in the Dimensions array are:   db.user.id   db.user.name   db.host.id   db.host.name   db.sql.id   db.sql.db_id   db.sql.statement   db.sql.tokenized_id   db.sql_tokenized.id   db.sql_tokenized.db_id   db.sql_tokenized.statement   db.wait_event.name   db.wait_event.type   db.wait_event_type.name  
        public let dimensions: [String]?
        /// The name of the dimension group. Valid values are:    db.user     db.host     db.sql     db.sql_tokenized     db.wait_event     db.wait_event_type   
        public let group: String
        /// The maximum number of items to fetch for this dimension group.
        public let limit: Int32?

        public init(dimensions: [String]? = nil, group: String, limit: Int32? = nil) {
            self.dimensions = dimensions
            self.group = group
            self.limit = limit
        }

        public func validate(name: String) throws {
            try validate(dimensions, name:"dimensions", parent: name, max: 10)
            try validate(dimensions, name:"dimensions", parent: name, min: 1)
            try validate(limit, name:"limit", parent: name, max: 10)
            try validate(limit, name:"limit", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case dimensions = "Dimensions"
            case group = "Group"
            case limit = "Limit"
        }
    }

    public struct DimensionKeyDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Dimensions", required: false, type: .map), 
            AWSShapeMember(label: "Partitions", required: false, type: .list), 
            AWSShapeMember(label: "Total", required: false, type: .double)
        ]

        /// A map of name-value pairs for the dimensions in the group.
        public let dimensions: [String: String]?
        /// If PartitionBy was specified, PartitionKeys contains the dimensions that were.
        public let partitions: [Double]?
        /// The aggregated metric value for the dimension(s), over the requested time range.
        public let total: Double?

        public init(dimensions: [String: String]? = nil, partitions: [Double]? = nil, total: Double? = nil) {
            self.dimensions = dimensions
            self.partitions = partitions
            self.total = total
        }

        private enum CodingKeys: String, CodingKey {
            case dimensions = "Dimensions"
            case partitions = "Partitions"
            case total = "Total"
        }
    }

    public struct GetResourceMetricsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "EndTime", required: true, type: .timestamp), 
            AWSShapeMember(label: "Identifier", required: true, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "MetricQueries", required: true, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "PeriodInSeconds", required: false, type: .integer), 
            AWSShapeMember(label: "ServiceType", required: true, type: .enum), 
            AWSShapeMember(label: "StartTime", required: true, type: .timestamp)
        ]

        /// The date and time specifiying the end of the requested time series data. The value specified is exclusive - data points less than (but not equal to) EndTime will be returned. The value for EndTime must be later than the value for StartTime.
        public let endTime: TimeStamp
        /// An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source. To use an Amazon RDS instance as a data source, you specify its DbiResourceId value - for example: db-FAIHNTYBKTGAUSUZQYPDS2GW4A 
        public let identifier: String
        /// The maximum number of items to return in the response. If more items exist than the specified MaxRecords value, a pagination token is included in the response so that the remaining results can be retrieved. 
        public let maxResults: Int32?
        /// An array of one or more queries to perform. Each query must specify a Performance Insights metric, and can optionally specify aggregation and filtering criteria.
        public let metricQueries: [MetricQuery]
        /// An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by MaxRecords.
        public let nextToken: String?
        /// The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400 seconds). Valid values are:    1 (one second)    60 (one minute)    300 (five minutes)    3600 (one hour)    86400 (twenty-four hours)   If you don't specify PeriodInSeconds, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data points in the response.
        public let periodInSeconds: Int32?
        /// The AWS service for which Performance Insights will return metrics. The only valid value for ServiceType is: RDS 
        public let serviceType: ServiceType
        /// The date and time specifying the beginning of the requested time series data. You can't specify a StartTime that's earlier than 7 days ago. The value specified is inclusive - data points equal to or greater than StartTime will be returned. The value for StartTime must be earlier than the value for EndTime.
        public let startTime: TimeStamp

        public init(endTime: TimeStamp, identifier: String, maxResults: Int32? = nil, metricQueries: [MetricQuery], nextToken: String? = nil, periodInSeconds: Int32? = nil, serviceType: ServiceType, startTime: TimeStamp) {
            self.endTime = endTime
            self.identifier = identifier
            self.maxResults = maxResults
            self.metricQueries = metricQueries
            self.nextToken = nextToken
            self.periodInSeconds = periodInSeconds
            self.serviceType = serviceType
            self.startTime = startTime
        }

        public func validate(name: String) throws {
            try validate(maxResults, name:"maxResults", parent: name, max: 20)
            try validate(maxResults, name:"maxResults", parent: name, min: 0)
            try metricQueries.forEach {
                try $0.validate(name: "\(name).metricQueries[]")
            }
            try validate(metricQueries, name:"metricQueries", parent: name, max: 15)
            try validate(metricQueries, name:"metricQueries", parent: name, min: 1)
        }

        private enum CodingKeys: String, CodingKey {
            case endTime = "EndTime"
            case identifier = "Identifier"
            case maxResults = "MaxResults"
            case metricQueries = "MetricQueries"
            case nextToken = "NextToken"
            case periodInSeconds = "PeriodInSeconds"
            case serviceType = "ServiceType"
            case startTime = "StartTime"
        }
    }

    public struct GetResourceMetricsResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AlignedEndTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "AlignedStartTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "Identifier", required: false, type: .string), 
            AWSShapeMember(label: "MetricList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]

        /// The end time for the returned metrics, after alignment to a granular boundary (as specified by PeriodInSeconds). AlignedEndTime will be greater than or equal to the value of the user-specified Endtime.
        public let alignedEndTime: TimeStamp?
        /// The start time for the returned metrics, after alignment to a granular boundary (as specified by PeriodInSeconds). AlignedStartTime will be less than or equal to the value of the user-specified StartTime.
        public let alignedStartTime: TimeStamp?
        /// An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source. To use an Amazon RDS instance as a data source, you specify its DbiResourceId value - for example: db-FAIHNTYBKTGAUSUZQYPDS2GW4A 
        public let identifier: String?
        /// An array of metric results,, where each array element contains all of the data points for a particular dimension.
        public let metricList: [MetricKeyDataPoints]?
        /// An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by MaxRecords.
        public let nextToken: String?

        public init(alignedEndTime: TimeStamp? = nil, alignedStartTime: TimeStamp? = nil, identifier: String? = nil, metricList: [MetricKeyDataPoints]? = nil, nextToken: String? = nil) {
            self.alignedEndTime = alignedEndTime
            self.alignedStartTime = alignedStartTime
            self.identifier = identifier
            self.metricList = metricList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case alignedEndTime = "AlignedEndTime"
            case alignedStartTime = "AlignedStartTime"
            case identifier = "Identifier"
            case metricList = "MetricList"
            case nextToken = "NextToken"
        }
    }

    public struct MetricKeyDataPoints: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DataPoints", required: false, type: .list), 
            AWSShapeMember(label: "Key", required: false, type: .structure)
        ]

        /// An array of timestamp-value pairs, representing measurements over a period of time.
        public let dataPoints: [DataPoint]?
        /// The dimension(s) to which the data points apply.
        public let key: ResponseResourceMetricKey?

        public init(dataPoints: [DataPoint]? = nil, key: ResponseResourceMetricKey? = nil) {
            self.dataPoints = dataPoints
            self.key = key
        }

        private enum CodingKeys: String, CodingKey {
            case dataPoints = "DataPoints"
            case key = "Key"
        }
    }

    public struct MetricQuery: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Filter", required: false, type: .map), 
            AWSShapeMember(label: "GroupBy", required: false, type: .structure), 
            AWSShapeMember(label: "Metric", required: true, type: .string)
        ]

        /// One or more filters to apply in the request. Restrictions:   Any number of filters by the same dimension, as specified in the GroupBy parameter.   A single filter for any other dimension in this dimension group.  
        public let filter: [String: String]?
        /// A specification for how to aggregate the data points from a query result. You must specify a valid dimension group. Performance Insights will return all of the dimensions within that group, unless you provide the names of specific dimensions within that group. You can also request that Performance Insights return a limited number of values for a dimension.
        public let groupBy: DimensionGroup?
        /// The name of a Performance Insights metric to be measured. Valid values for Metric are:    db.load.avg - a scaled representation of the number of active sessions for the database engine.    db.sampledload.avg - the raw number of active sessions for the database engine.  
        public let metric: String

        public init(filter: [String: String]? = nil, groupBy: DimensionGroup? = nil, metric: String) {
            self.filter = filter
            self.groupBy = groupBy
            self.metric = metric
        }

        public func validate(name: String) throws {
            try groupBy?.validate(name: "\(name).groupBy")
        }

        private enum CodingKeys: String, CodingKey {
            case filter = "Filter"
            case groupBy = "GroupBy"
            case metric = "Metric"
        }
    }

    public struct ResponsePartitionKey: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Dimensions", required: true, type: .map)
        ]

        /// A dimension map that contains the dimension(s) for this partition.
        public let dimensions: [String: String]

        public init(dimensions: [String: String]) {
            self.dimensions = dimensions
        }

        private enum CodingKeys: String, CodingKey {
            case dimensions = "Dimensions"
        }
    }

    public struct ResponseResourceMetricKey: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Dimensions", required: false, type: .map), 
            AWSShapeMember(label: "Metric", required: true, type: .string)
        ]

        /// The valid dimensions for the metric.
        public let dimensions: [String: String]?
        /// The name of a Performance Insights metric to be measured. Valid values for Metric are:    db.load.avg - a scaled representation of the number of active sessions for the database engine.    db.sampledload.avg - the raw number of active sessions for the database engine.  
        public let metric: String

        public init(dimensions: [String: String]? = nil, metric: String) {
            self.dimensions = dimensions
            self.metric = metric
        }

        private enum CodingKeys: String, CodingKey {
            case dimensions = "Dimensions"
            case metric = "Metric"
        }
    }

    public enum ServiceType: String, CustomStringConvertible, Codable {
        case rds = "RDS"
        public var description: String { return self.rawValue }
    }
}
