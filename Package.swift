// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppBase",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AppBase",
            targets: ["AppBase"]),
        .library(
            name: "DesignSystem",
            type: .dynamic,
            targets: ["DesignSystem"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "AppBase",
            dependencies: []),
        .testTarget(
            name: "AppBaseTests",
            dependencies: ["AppBase"]),
        
        .target(
            name: "DesignSystem",
            dependencies: [],
            resources: [.process("Resource")]),
    ]
)
