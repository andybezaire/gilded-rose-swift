// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GildedRose",
    products: [
        .library(name: "GildedRose", targets: ["GildedRose"]),
    ],
    dependencies: [
        .package(path: "FinestGoods"),
    ],
    targets: [
        .target(
            name: "GildedRose",
            dependencies: [.product(name: "FinestGoods", package: "FinestGoods")]
        ),
        .testTarget(name: "GildedRoseTests", dependencies: ["GildedRose"]),
    ]
)
