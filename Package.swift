// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "WeDoBooksSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "WeDoBooks", 
            targets: ["WeDoBooksWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/wedobooks/wedobooks-sdk-ios-firebase-provider.git", from: "1.1.3"),
    ],
    targets: [
        .target(
            name: "WeDoBooksWrapper",
            dependencies: [
                "WeDoBooksSDK",
                "ColibrioReader",
                .product(name: "FirebaseProvider", package: "wedobooks-sdk-ios-firebase-provider"),
            ]
        ),
        .binaryTarget(
            name: "WeDoBooksSDK",
            url: "https://wdb-ios-spm-844218222632.europe-west1.run.app/WeDoBooksSDK-v1.3.1.xcframework.zip",
            checksum: "7fb5d4d650fdb3340f28831850d26ed9b8ba8571581f229935e277b6ae05323a"
        ),
        .binaryTarget(
            name: "ColibrioReader",
            url: "https://wdb-ios-spm-844218222632.europe-west1.run.app/ColibrioReader-v4.6.3.xcframework.zip",
            checksum: "c8e599335a562b1dd6e9201d40695309d22dc3562c38aeb46a9403c5310b4633"
        )
    ]
)
