# SPMDemo
A small sample package created using SPM

# Usage
  Run swift build from root folder to create Utils module
  ```
  $swift build
  ```
  To use this package on another application or project add the following to yout Package.swift
  
  ```
  import PackageDescription

  let package = Package(
      name: "Demo",
      targets: [],
      dependencies: [
          .Package(url: "https://github.com/RoshanNindrai/ULUtils.git",
                   majorVersion: 1),
          ]
  )
```

# Swiftenv
   Since SPM requires swift 3, i would recommend using swiftenv (https://swiftenv.fuller.li/en/latest/) to manage swift versions.
     
