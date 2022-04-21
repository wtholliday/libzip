// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libzip",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "libzip",
            targets: ["libzip"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/krzyzanowskim/OpenSSL", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "libzip",
            dependencies: ["OpenSSL"],
            path: ".",
            exclude: ["lib/zip_source_file_win32.c",
                      "lib/zip_source_file_win32.h",
                      "lib/zip_source_file_win32_ansi.c",
                      "lib/zip_source_file_win32_named.c",
                      "lib/zip_source_file_win32_utf16.c",
                      "lib/zip_source_file_win32_utf8.c",
                      "lib/zip_random_win32.c",
                      "lib/zip_random_uwp.c",
                      "lib/zip_crypto_win.c",
                      "lib/zip_crypto_mbedtls.c",
                      "lib/zip_crypto_gnutls.c",
                      "lib/zip_algorithm_zstd.c",
                      "lib/zip_algorithm_xz.c"],
            sources: ["lib"],
            publicHeadersPath: "lib")
    ],
    cxxLanguageStandard: .cxx20
)
