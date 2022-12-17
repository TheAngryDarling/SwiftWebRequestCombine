// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebRequestCombie",
    platforms: [
        .macOS("10.15"),
        .iOS("13.0"),
        .tvOS("13.0"),
        .watchOS("6.0")
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "WebRequestCombie",
            targets: ["WebRequestCombie"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/TheAngryDarling/SwiftWebRequest.git",
                 from: "2.1.2"),
        .package(url: "https://github.com/TheAngryDarling/SwiftLittleWebServer.git",
                 .exact( "0.1.6")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "WebRequestCombie",
            dependencies: ["WebRequest"]),
        .testTarget(
            name: "WebRequestCombieTests",
            dependencies: ["WebRequestCombie", "LittleWebServer"]),
    ]
)
