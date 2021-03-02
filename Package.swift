// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.8.0"

let package = Package(
    name: "plcrashreporter-xcframwork-wrapping",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "PLCWrapper",
            targets: ["CrashReporter"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "CrashReporter", url: "https://eidinger.info/PLCrashReporterXCFrameworks/\(version)/CrashReporter.xcframework.zip",
                      checksum: "4aa868a8d68dc28c72f564c7a2123654c91da5ff1b6483fb773b97f069e831d4"),
    ]
)
