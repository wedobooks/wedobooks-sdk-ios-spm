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
            url: "https://wdb-ios-spm-844218222632.europe-west1.run.app/WeDoBooksSDK-v0.1.4.xcframework.zip",
            checksum: "05d86d10825ba11911dbf80409d23f1763b40b42705dd3764698c022dca8594b"
        )
    ]
)
