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
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.6.3"),
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
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.0.0/REVUPMediaVungle.zip",
            checksum: "5a96c2d10c0b22a4205e95b330cb80c3364b54623ff28c4e15d0172ef7380117"
        ),
    ]
)
