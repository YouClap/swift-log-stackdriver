// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-log-stackdriver",
    products: [
        .library(name: "swift-log-stackdriver", targets: ["swift-log-stackdriver"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "swift-log-stackdriver", dependencies: ["Logging"], path: "Sources"),
        .testTarget(name: "swift-log-stackdriverTests", dependencies: ["swift-log-stackdriver"]),
    ]
)
