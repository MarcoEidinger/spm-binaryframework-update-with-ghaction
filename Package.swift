// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.8.1"

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
                      checksum: "4607647f0370819e150ea913cb44c5740c276f77908d1c4e6eeeb077d35a52eb"),
    ]
)
