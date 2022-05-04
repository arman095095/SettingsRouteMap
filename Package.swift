// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

private let remoteDependencies: [Package.Dependency] = [
    .package(url: "https://github.com/arman095095/Module.git", branch: "develop"),
]

private let localDependencies: [Package.Dependency] = [
    .package(path: "/Users/armancarhcan/Desktop/Workdir/Module"),
]

let isDev = true
private let dependencie = isDev ? localDependencies : remoteDependencies

let package = Package(
    name: "SettingsRouteMap",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SettingsRouteMap",
            targets: ["SettingsRouteMap"]),
    ],
    dependencies: dependencie,
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SettingsRouteMap",
            dependencies: [.product(name: "Module", package: "Module")]),
    ]
)
