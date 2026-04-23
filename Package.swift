// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TSAPIApp",
    platforms: [.macOS(.v14)],
    dependencies: [
        .package(url: "https://github.com/supabase/supabase-swift", from: "2.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "TSAPIApp",
            dependencies: [
                .product(name: "Supabase", package: "supabase-swift"),
            ],
            resources: [.process("Assets.xcassets")]
        ),
    ]
)
