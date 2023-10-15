# Example project for QtIF integration with QtDS
This repository serves as a practical demonstration of the integration of Qt Interface Framework (QtIF) with Qt Design Studio (QtDS), showcasing the collaboration between design and development tools.

# Build steps
> [!IMPORTANT]
> Example tested only on Ubuntu 20.04. It might work on different platforms, but there's no guarantee.

## Dependencies
1. Qt6
2. QtIntefaceFramework

## Build steps

> [!NOTE]
> You might need to point cmake to Qt folder with QtInterfaceFramework. You can do that by exporting `CMAKE_PREFIX_PATH` with path to your Qt folder. Alternatively you can pass it to cmake commad with `-DCMAKE_PREFIX_PATH=<your path>`.

For developer build:
```
mkdir build
cd build
cmake .. && make
```
For designer build:
```
mkdir build
cd build
cmake -DDESIGNER_BUILD=TRUE .. && make
```

## QtDS setup
Inside `WeatherApplication.qmlproject` you will find 2 different `importPaths`. Please keep just one uncommented for QtDS work correctly. One of them is for usage with compiled QtIF module, second one works with mock imports.

# Licenses
Icons in this project are provided by [Lorc](https://lorcblog.blogspot.com/) and [Delapouite](https://delapouite.com/) from [game-icons.net](https://game-icons.net/) under a Creative Commons Attribution 3.0 Unported License.

Example itself is licensed under MIT license.
