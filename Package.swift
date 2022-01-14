// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Bolts",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Bolts",
            targets: ["Bolts-iOS","Bolts"]),
    ],
    targets: [
        .target(
            name: "Bolts",
            dependencies: ["Bolts-iOS"],
            path: "Sources/Bolts",
            exclude: ["Info.plist"]
        ),
        .target(
            name: "Bolts-iOS",
            path: "Sources/Bolts-iOS"
        ),
//        .testTarget(
//            name: "Bolts-Tests",
//            dependencies: ["Bolts"],
//            path: "Tests/BoltsTests",
//            exclude: ["BoltsTests-Info.plist"]
//        )
    ]
)
