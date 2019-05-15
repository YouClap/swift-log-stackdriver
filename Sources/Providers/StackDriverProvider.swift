//
//public protocol LogsProvider: AnyObject {
//    /// A type representing a tracker's identifier.
//    typealias ID = String
//    
//    /// The identifier of the tracker. The default is the tracker's type name.
//    var identifier: ID { get }
//    
//    /// Tracks an analytics event.
//    ///
//    /// - Parameter event: The event to track.
//    func log<State, Action, ParameterKey>(_ event: Logs.Event<State, Action, ParameterKey>)
//        where ParameterKey: LogsParameterKey
//}
//
//extension LogsProvider {
//    public var identifier: ID { return "\(type(of: self))" }
//}
