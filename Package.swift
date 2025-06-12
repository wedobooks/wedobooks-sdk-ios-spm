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
            url: "https://wdb-ios-spm-844218222632.europe-west1.run.app/WeDoBooksSDK-v0.1.3.xcframework.zip",
            checksum: "db062f2171797482cc5410a1422bba0514e1fb6064471729ecf4e79bf244d84f"
        )
    ]
)
