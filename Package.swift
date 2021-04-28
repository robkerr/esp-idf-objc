// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CESPProvision",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "CESPProvision",
            targets: ["CESPProvision"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CESPProvision",
            dependencies: [])
    ]
)
