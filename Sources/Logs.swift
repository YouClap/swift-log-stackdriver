////private enum Constants {
////
////}
////
////final class SwiftyStackDriverLogDestination<MetadataKey: Hashable> { //}: MetadataLogDestination { // TODO: Ask Portela what is suposed to be returned here
////
////    let minLevel: Log.Level
////    let queue: Log.Queue
////
//////    init(minLevel: Log.Level = Log.Level.info, queue: Log.Queue = Log.Queue(label: "log.destination.swiftybeaver".reverseDomain)) {
////    init(minLevel: Log.Level = Log.Level.info, queue: Log.Queue = Log.Queue(label: "STACKDRIVER")) {
////        self.minLevel = minLevel
////        self.queue = queue
////    }
////
////    func write(item: Log.Item, onFailure failure: @escaping (Error) -> ()) {
////        guard item.level.rawValue >= minLevel.rawValue else { return }
////
////        print("Sending data to stackdriver...")
////
////        // POST TO stackdrivers
////
////        print("Sending data to stackdriver... OK")
////    }
////}
//
//
//private enum Logs {
//    public typealias Parameters<Key: LogsParameterKey> = [Key : Any]
//    
//    public enum Event<State, Action, Key: LogsParameterKey> {
//        case verbose(State, Parameters<Key>?)
//        case debug(Action, Parameters<Key>?)
//        case info(Action, Parameters<Key>?)
//        case warning(Action, Parameters<Key>?)
//        case error(Action, Parameters<Key>?)
//    }
//}
