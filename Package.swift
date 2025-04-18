// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Refds",
    defaultLocalization: "pt",
    platforms: [
        .iOS(.v18),
        .macCatalyst(.v18),
        .macOS(.v15),
        .tvOS(.v18),
        .watchOS(.v11),
        .visionOS(.v2)
    ],
    products: [
        .library(name: "Refds", targets: ["RefdsFoundation", "RefdsDependency", "RefdsNetwork", "RefdsArchitecture"]),
        .library(name: "RefdsFoundation", type: .static, targets: ["RefdsFoundation"]),
        .library(name: "RefdsDependency", type: .static, targets: ["RefdsFoundation", "RefdsDependency"]),
        .library(name: "RefdsNetwork", type: .static, targets: ["RefdsFoundation", "RefdsNetwork"]),
        .library(name: "RefdsArchitecture", type: .static, targets: ["RefdsFoundation", "RefdsArchitecture"])
    ],
    targets: [
        .target(name: "RefdsFoundation"),
        .target(name: "RefdsDependency", dependencies: ["RefdsFoundation"]),
        .target(name: "RefdsNetwork", dependencies: ["RefdsFoundation"]),
        .target(name: "RefdsArchitecture", dependencies: ["RefdsFoundation"])
    ]
)
