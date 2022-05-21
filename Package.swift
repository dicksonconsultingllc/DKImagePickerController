import PackageDescription

let package = Package(
    name: "DKImagePickerController",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        .library(
            name: "DKImagePickerController",
            targets: ["DKImagePickerController"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zhangao0086/DKCamera", .branch("develop")),
        .package(url: "https://github.com/zrn-ns/DKPhotoGallery", .branch("feature/support_swiftpm")),
        .package(url: "https://github.com/TimOliver/TOCropViewController", from: "2.6.0"),
    ],
    targets: [
        .target(
            name: "DKImagePickerController",
            dependencies: ["DKCamera", "DKPhotoGallery", "TOCropViewController"],
            path: "Sources"),
    ]
)
