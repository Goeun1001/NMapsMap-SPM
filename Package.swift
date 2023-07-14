// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NMapsMap",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "NMapsMap",
            targets: ["NMapsMap-SPM"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "NMapsMap-SPM",
            dependencies: ["NMapsMap"]),
        .binaryTarget(
            name: "NMapsMap",
            url: "https://github.com/navermaps/NMapsMap/releases/download/release%2F3.15.0/NMapsMap.framework.zip",
            checksum: "bba5cfe689a5418ca297ed7e2dbfe3da56d68b232c3d650bff8df236e28dc15b"),
        .testTarget(
            name: "NMapsMap-SPMTests",
            dependencies: ["NMapsMap-SPM"]),
    ]
)
