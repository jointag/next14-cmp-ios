// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Next14CMP",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Next14CMP",
            targets: ["Next14CMP"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "Next14CMP",
            path: "Library/Next14CMP.xcframework"
        )
    ]
)
