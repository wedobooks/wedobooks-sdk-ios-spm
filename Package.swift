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
            url: "https://github.com/wedobooks/wedobooks-sdk-ios-spm/releases/download/v0.1.0/WeDoBooksSDK-v0.1.0.xcframework.zip",
            checksum: "e31fb72f186b965d26aff0a5be27d75ebddfeb89abc21c103efc45386de16651"
        )
    ]
)