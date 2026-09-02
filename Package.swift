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
        .package(url: "https://github.com/wedobooks/wedobooks-sdk-ios-firebase-provider.git", from: "1.2.0"),
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
            url: "https://wdb-ios-spm-844218222632.europe-west1.run.app/WeDoBooksSDK-v1.8.0.xcframework.zip",
            checksum: "d09f025181b210b8448675eaee086e5f3b1e80be048c7854c83fbe756032fc2b"
        ),
        .binaryTarget(
            name: "ColibrioReader",
            url: "https://wdb-ios-spm-844218222632.europe-west1.run.app/ColibrioReader-v4.6.3.xcframework.zip",
            checksum: "c8e599335a562b1dd6e9201d40695309d22dc3562c38aeb46a9403c5310b4633"
        )
    ]
)
