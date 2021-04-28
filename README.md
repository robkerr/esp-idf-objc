# esp-idf-objc

This repo moves the Objective-C files from the ESP-IDF Swift Pod Framework into their own Podfile/SPM Repo.

This is necessary because:
1. A Swift Package Manager Module cannot contain both Swift and Obj-C source files.  It would be possible locate both the Obj-C and Swift targets in a single repo defined in a single Package.swift file.  However....
2. A single .podspec repo can only build a single module (not two).  Therefore, if the Obj-C files are in a different module (as SPM expects), they cannot be in a single pod repo (which expects one module per repo)

Therefore, by moving the objc to a different repo, which becomes a dependency of for the Swift Module/Repo/Podspec/Package, both SPM and CocoaPods can be happy to co-exist.

This Module is named by placing the letter 'C' before the Swift module name, per convention.

For reference:
[Usinge C Modules in Swift Package Manager](https://github.com/apple/swift-package-manager/blob/263171977ebcd47f4aaca1202cff5a96c5158a64/Documentation/Usage.md#c-language-targets)

