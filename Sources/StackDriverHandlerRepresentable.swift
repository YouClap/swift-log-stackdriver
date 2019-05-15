
protocol StackDriverHandlerRepresentable {
//    func write(item: Log.Item, onFailure failure: @escaping (Error) -> ())
    func send(item: Log.Item) -> ()
}
