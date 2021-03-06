// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Mobileanalytics {

    public struct Event: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "metrics", required: false, type: .map), 
            AWSShapeMember(label: "session", required: false, type: .structure), 
            AWSShapeMember(label: "attributes", required: false, type: .map), 
            AWSShapeMember(label: "timestamp", required: true, type: .string), 
            AWSShapeMember(label: "eventType", required: true, type: .string), 
            AWSShapeMember(label: "version", required: false, type: .string)
        ]
        /// A collection of key-value pairs that gives additional, measurable context to the event. The key-value pairs are specified by the developer. This collection can be empty or the attribute object can be omitted.
        public let metrics: [String: Double]?
        /// The session the event occured within. 
        public let session: Session?
        /// A collection of key-value pairs that give additional context to the event. The key-value pairs are specified by the developer. This collection can be empty or the attribute object can be omitted.
        public let attributes: [String: String]?
        /// The time the event occurred in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let timestamp: String
        /// A name signifying an event that occurred in your app. This is used for grouping and aggregating like events together for reporting purposes.
        public let eventType: String
        /// The version of the event.
        public let version: String?

        public init(metrics: [String: Double]? = nil, session: Session? = nil, attributes: [String: String]? = nil, timestamp: String, eventType: String, version: String? = nil) {
            self.metrics = metrics
            self.session = session
            self.attributes = attributes
            self.timestamp = timestamp
            self.eventType = eventType
            self.version = version
        }

        private enum CodingKeys: String, CodingKey {
            case metrics = "metrics"
            case session = "session"
            case attributes = "attributes"
            case timestamp = "timestamp"
            case eventType = "eventType"
            case version = "version"
        }
    }

    public struct Session: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "startTimestamp", required: false, type: .string), 
            AWSShapeMember(label: "id", required: false, type: .string), 
            AWSShapeMember(label: "stopTimestamp", required: false, type: .string), 
            AWSShapeMember(label: "duration", required: false, type: .long)
        ]
        /// The time the event started in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let startTimestamp: String?
        /// A unique identifier for the session
        public let id: String?
        /// The time the event terminated in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z
        public let stopTimestamp: String?
        /// The duration of the session.
        public let duration: Int64?

        public init(startTimestamp: String? = nil, id: String? = nil, stopTimestamp: String? = nil, duration: Int64? = nil) {
            self.startTimestamp = startTimestamp
            self.id = id
            self.stopTimestamp = stopTimestamp
            self.duration = duration
        }

        private enum CodingKeys: String, CodingKey {
            case startTimestamp = "startTimestamp"
            case id = "id"
            case stopTimestamp = "stopTimestamp"
            case duration = "duration"
        }
    }

    public struct PutEventsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "clientContext", location: .header(locationName: "x-amz-Client-Context"), required: true, type: .string), 
            AWSShapeMember(label: "clientContextEncoding", location: .header(locationName: "x-amz-Client-Context-Encoding"), required: false, type: .string), 
            AWSShapeMember(label: "events", required: true, type: .list)
        ]
        /// The client context including the client ID, app title, app version and package name.
        public let clientContext: String
        /// The encoding used for the client context.
        public let clientContextEncoding: String?
        /// An array of Event JSON objects
        public let events: [Event]

        public init(clientContext: String, clientContextEncoding: String? = nil, events: [Event]) {
            self.clientContext = clientContext
            self.clientContextEncoding = clientContextEncoding
            self.events = events
        }

        private enum CodingKeys: String, CodingKey {
            case clientContext = "x-amz-Client-Context"
            case clientContextEncoding = "x-amz-Client-Context-Encoding"
            case events = "events"
        }
    }

}