// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaVungle",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaVungle",
            targets: ["REVUPMediaVungleTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.7.8"),
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
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaVungle.zip",
            checksum: "8d0325564c5de7f52c156abfbf2d77422123028d520002f71d0cadc72e665a87"
        ),
    ]
)
