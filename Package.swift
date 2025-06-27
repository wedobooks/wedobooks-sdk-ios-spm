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
    targets: [
        .target(
            name: "WeDoBooksWrapper",
            dependencies: [
                "WeDoBooksSDK",
                "ColibrioReader"
            ]
        ),
        .binaryTarget(
            name: "WeDoBooksSDK",
            url: "https://wdb-ios-spm-844218222632.europe-west1.run.app/WeDoBooksSDK-v1.0.0.xcframework.zip",
            checksum: "c724ffe59c1b3c404311f4092311900d1d69e5ba3571fc34133e497bb1f4545d"
        ),
        .binaryTarget(
            name: "ColibrioReader",
            url: "https://wdb-ios-spm-844218222632.europe-west1.run.app/ColibrioReader-v4.3.1.xcframework.zip",
            checksum: "a35f5508e67f524b9998ec9ca3660ff918e7e7f4db9d65f5ab211e6aa12c7133"
        )
    ]
)
