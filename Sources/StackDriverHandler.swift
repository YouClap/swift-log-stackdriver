
final class StackDriverHandler: StackDriverHandlerRepresentable {
    //    func write(item: Log.Item, onFailure failure: @escaping (Error) -> ())
    func send(item: Log.Item) -> () {
        print("Sending data to stackdriver...")
        // POST TO stackdrivers
        print("Sending data to stackdriver... OK")
    }
}
