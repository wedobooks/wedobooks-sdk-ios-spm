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
            url: "https://wdb-ios-spm-844218222632.europe-west1.run.app/WeDoBooksSDK-v0.2.0.xcframework.zip",
            checksum: "1dec7e7f760d80f74373a40a6a73eacfb7d77f289931734efb3abceb2c9fa86f"
        ),
        .binaryTarget(
            name: "ColibrioReader",
            url: "https://wdb-ios-spm-844218222632.europe-west1.run.app/ColibrioReader-v4.3.1.xcframework.zip",
            checksum: "a35f5508e67f524b9998ec9ca3660ff918e7e7f4db9d65f5ab211e6aa12c7133"
        )
    ]
)
