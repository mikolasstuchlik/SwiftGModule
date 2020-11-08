// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "GModule",
    products: [ .library(name: "GModule", targets: ["GModule"]) ],
    dependencies: [
        .package(name: "gir2swift", url: "https://github.com/mikolasstuchlik/gir2swift.git", .branch("master")),
        .package(name: "GLib", url: "https://github.com/mikolasstuchlik/SwiftGLib.git", .branch("master"))
    ],
    targets: [
        .target(name: "GModule", dependencies: ["GLib"]),
        .testTarget(name: "GModuleTests", dependencies: ["GModule"]),
    ]
)
