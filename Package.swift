// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "core-kit",
    platforms: [
        .macOS(.v11),
        .iOS(.v14),
        .tvOS(.v14),
        .watchOS(.v8),
    ],
    products: [
        .library(name: "CoreKit", targets: ["CoreKit"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "CoreKit", dependencies: [
            
        ]),
        .testTarget(name: "CoreKitTests", dependencies: [
            .target(name: "CoreKit")
        ]),
    ]
)
