// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TDTools",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TDTools",
            targets: ["TDTools"])
    ],
    targets: [
        .target(
            name: "TDTools",
            dependencies: []),
        .testTarget(
            name: "TDToolsTests",
            dependencies: ["TDTools"]),
    ]
)
