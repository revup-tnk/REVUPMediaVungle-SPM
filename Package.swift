// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaVungle",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "REVUPMediaVungle",
            targets: ["REVUPMediaVungleTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.7.2"),
    ],
    targets: [
        .target(
            name: "REVUPMediaVungleTarget",
            dependencies: [
                .target(name: "REVUPMediaVungle"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaVungle",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.1.0/REVUPMediaVungle.zip",
            checksum: "d07106c3d18dcba951f02e6d9cd89e5f92bb98a261fe6dbfd46625fe4bfb9c4c"
        ),
    ]
)
