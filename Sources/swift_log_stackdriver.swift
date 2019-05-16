import Logging

final class StackDriverLogDestination<MetadataKey: Hashable>: MetadataLogDestination {
    
    let minLevel: Log.Level
    let queue: Log.Queue
    
    private let stackDriverLogger: StackDriverHandlerRepresentable
    
    init(stackDriverLogger: StackDriverHandlerRepresentable, minLevel: Log.Level = Log.Level.info, queue: Log.Queue = Log.Queue(label: "STACKDRIVER")) {
        // TODO: We need to set the log queue?

        self.minLevel = minLevel
        self.queue = queue
        self.stackDriverLogger = stackDriverLogger
    }
    
    func setMetadata(_ metadata: [MetadataKey : Any], onFailure: @escaping (Error) -> Void) {}
    
    func removeMetadata(forKeys keys: [MetadataKey], onFailure: @escaping (Error) -> Void) {}
    
    func write(item: Log.Item, onFailure: @escaping (Error) -> Void) {
        guard item.level.rawValue >= minLevel.rawValue else { return }
        
        queue.dispatchQueue.sync { [weak self, item] in
            let _ = self?.stackDriverLogger.send(item: item)
        }
    }
}
