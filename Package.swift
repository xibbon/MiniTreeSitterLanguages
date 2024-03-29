// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MiniTreeSitterLanguages",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "TreeSitterGDScript", targets: ["TreeSitterGDScript"]),
        .library(name: "TreeSitterGDScriptQueries", targets: ["TreeSitterGDScriptQueries"]),
        .library(name: "TreeSitterGDScriptRunestone", targets: ["TreeSitterGDScriptRunestone"]),
        .library(name: "TreeSitterJSON", targets: ["TreeSitterJSON"]),
        .library(name: "TreeSitterJSONQueries", targets: ["TreeSitterJSONQueries"]),
        .library(name: "TreeSitterJSONRunestone", targets: ["TreeSitterJSONRunestone"]),
        .library(name: "TreeSitterJSON5", targets: ["TreeSitterJSON5"]),
        .library(name: "TreeSitterJSON5Queries", targets: ["TreeSitterJSON5Queries"]),
        .library(name: "TreeSitterJSON5Runestone", targets: ["TreeSitterJSON5Runestone"]),
        .library(name: "TreeSitterMarkdown", targets: ["TreeSitterMarkdown"]),
        .library(name: "TreeSitterMarkdownQueries", targets: ["TreeSitterMarkdownQueries"]),
        .library(name: "TreeSitterMarkdownRunestone", targets: ["TreeSitterMarkdownRunestone"]),
        .library(name: "TreeSitterMarkdownInline", targets: ["TreeSitterMarkdownInline"]),
        .library(name: "TreeSitterMarkdownInlineQueries", targets: ["TreeSitterMarkdownInlineQueries"]),
        .library(name: "TreeSitterMarkdownInlineRunestone", targets: ["TreeSitterMarkdownInlineRunestone"]),
    ],
    dependencies: [
        .package(url: "https://github.com/simonbs/Runestone", from: "0.4.1")
    ],
    targets: [
        .target(name: "TreeSitterLanguagesCommon"),
        .target(name: "TreeSitterGDScript", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterGDScriptQueries", resources: [.copy("highlights.scm"), .copy("folds.scm"), .copy ("indents.scm"), .copy("injections.scm"), .copy ("locals.scm")]),
        .target(name: "TreeSitterGDScriptRunestone", dependencies: ["Runestone", "TreeSitterGDScript", "TreeSitterGDScriptQueries"]),
        .target(name: "TreeSitterJSON", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterJSONQueries", resources: [.copy("highlights.scm")]),
        .target(name: "TreeSitterJSONRunestone", dependencies: ["Runestone", "TreeSitterJSON", "TreeSitterJSONQueries"]),
        .target(name: "TreeSitterJSON5", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterJSON5Queries", resources: [.copy("highlights.scm"), .copy("injections.scm")]),
        .target(name: "TreeSitterJSON5Runestone", dependencies: ["Runestone", "TreeSitterJSON5", "TreeSitterJSON5Queries"]),
        .target(name: "TreeSitterMarkdown", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterMarkdownQueries", resources: [.copy("highlights.scm"), .copy("injections.scm")]),
        .target(name: "TreeSitterMarkdownRunestone", dependencies: ["Runestone", "TreeSitterMarkdown", "TreeSitterMarkdownQueries"]),
        .target(name: "TreeSitterMarkdownInline", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterMarkdownInlineQueries", resources: [.copy("highlights.scm"), .copy("injections.scm")]),
        .target(name: "TreeSitterMarkdownInlineRunestone", dependencies: ["Runestone", "TreeSitterMarkdownInline", "TreeSitterMarkdownInlineQueries"]),
    ]
)
