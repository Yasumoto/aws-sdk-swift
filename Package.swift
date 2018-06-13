// swift-tools-version:4.1
import PackageDescription

let package = Package(
    name: "AWSSDKSwift",
    products: [
        .library(name: "AWSSDKSwift", targets: ["AWSSDKSwift"]),
        .executable(name: "aws-sdk-swift-codegen", targets: ["CodeGenerator"])
    ],
    dependencies: [
        .package(url: "https://github.com/Yasumoto/aws-sdk-swift-core.git", .branch("swift-nio")),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMajor(from: "4.1.0")),
    ],
    targets: [
        .target(name: "CodeGenerator", dependencies: ["AWSSDKSwiftCore", "SwiftyJSON"]),
        .target(name: "AWSSDKSwift", dependencies: ["AWSSDKSwiftCore", "SwiftyJSON"]),
        .testTarget(name: "AWSSDKSwiftTests", dependencies: ["AWSSDKSwift"])
    ]
)
