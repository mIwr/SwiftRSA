// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftRSA",
    platforms: [
        .macOS(.v10_13), .macCatalyst(.v13), .iOS(.v11), .tvOS(.v11), .watchOS(.v4), .visionOS(.v1)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftRSA",
            targets: ["SwiftRSA"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/mIwr/BigInt", from: "1.19.2"),
        .package(url: "https://github.com/mIwr/ASN1", from: "2.6.1"),
        .package(url: "https://github.com/mIwr/Digest", from: "1.7.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(name: "SwiftRSA", dependencies: ["BigInt", "ASN1", "Digest"], resources: [.copy("PrivacyInfo.xcprivacy")]),
        .testTarget(name: "SwiftRSATests", dependencies: ["SwiftRSA"]),
    ]
)
