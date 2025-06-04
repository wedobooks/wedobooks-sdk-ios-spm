// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "WeDoBooksSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "WeDoBooksSDK",
            targets: ["WeDoBooksSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "WeDoBooksSDK",
            url: "https://wdb-ios-spm-844218222632.europe-west1.run.app/WeDoBooksSDK-v0.1.1.xcframework.zip",
            checksum: "20730f65db87a248bf52f86d1fbacd9a4809844142ce4c641ba10da4d0ede1ab"
        )
    ]
)
