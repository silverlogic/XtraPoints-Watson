// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XtraPoints-Watson",
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "1.7.9"),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.7.1"),
    ],
    targets: [
        .target(
            name: "XtraPoints-Watson",
            dependencies: ["XtraPoints-Waston-lib"],
            path: "./Sources/XtraPoints-Watson/"
        ),
        .target(
            name: "XtraPoints-Waston-lib",
            dependencies: ["Kitura",
                           "HeliumLogger"],
            path: "./Sources/XtraPoints-Watson-API/"
        )
    ]
)
