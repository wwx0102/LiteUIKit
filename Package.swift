// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LiteUIKit",
    platforms: [
        .iOS(.v15) // 限定只支持 iOS 15 及以上版本
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LiteUIKit",
            targets: ["LiteUIKit"]),
    ],
    dependencies: [
        // 如果需要依赖其他包，在这里添加
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LiteUIKit",
            dependencies: [],
            swiftSettings: [
                .define("DEBUG", .when(configuration: .debug))
            ]),
        .testTarget(
            name: "LiteUIKitTests",
            dependencies: ["LiteUIKit"]),
    ]
)
