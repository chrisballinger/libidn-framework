// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "libidn",
    platforms: [
        .iOS(.v8),
        .macOS(.v10_10),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "libidn",
            targets: ["libidn"]
        )
    ],
    targets: [
        .target(
            name: "libidn",
            path: ".",
            sources: [
                "lib",
                "Framework"
            ],
            publicHeadersPath: "Framework",
            cSettings: [
                .headerSearchPath("lib")
            ]
        ),
        .testTarget(
            name: "libidnTests",
            dependencies: ["libidn"],
            path: "Tests/libidnTests",
            sources: [
                "libidnTests.m"
            ]
        ),
        .testTarget(
            name: "libidnSwftTests",
            dependencies: ["libidn"],
            path: "Tests/libidnTests",
            sources: [
                "libidnSwiftTests.swift"
            ]
        )
    ]
)
