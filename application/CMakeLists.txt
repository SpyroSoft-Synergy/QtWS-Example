cmake_minimum_required(VERSION 3.16)
project(example_application LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui InterfaceFramework Qml Quick)
qt_add_executable(example_application
    src/main.cpp
)
set_target_properties(example_application PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

qt_add_qml_module(example_application
    URI example_application
    VERSION 1.0
    RESOURCE_PREFIX /
    QML_FILES
        qml/main.qml
        qml/ExampleApp.qml
        qml/WeatherViewModel.qml
        qml/MainScreen.ui.qml
        qml/WeatherDisplay.qml
    RESOURCES
        images/raining.png
        images/sun-cloud.png
        images/sun.png
        images/dice.png
)

set(QML_DESIGNER_IMPORT_PATH ${CMAKE_CURRENT_LIST_DIR}/qml/designer CACHE STRING "" FORCE)

set(QML_IMPORT_PATH ${CMAKE_CURRENT_LIST_DIR}/qml ${CMAKE_BINARY_DIR}/imports CACHE STRING "" FORCE)

target_link_libraries(example_application PUBLIC
    Qt::Quick
)
