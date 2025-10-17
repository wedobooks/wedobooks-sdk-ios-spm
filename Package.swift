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
        .package(url: "https://github.com/wedobooks/wedobooks-sdk-ios-firebase-provider.git", from: "1.0.0"),
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
            url: "https://wdb-ios-spm-844218222632.europe-west1.run.app/WeDoBooksSDK-v1.0.4.xcframework.zip",
            checksum: "b822290f60df7066ee79b27d4c6a04217404b65d322518781648679259a5e0cc"
        ),
        .binaryTarget(
            name: "ColibrioReader",
            url: "https://wdb-ios-spm-844218222632.europe-west1.run.app/ColibrioReader-v4.3.1.xcframework.zip",
            checksum: "a35f5508e67f524b9998ec9ca3660ff918e7e7f4db9d65f5ab211e6aa12c7133"
        )
    ]
)
