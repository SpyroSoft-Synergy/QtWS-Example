cmake_minimum_required(VERSION 3.16)
project(ApplicationImports LANGUAGES CXX)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Qml Quick InterfaceFramework)
qt_ifcodegen_import_variables(MIDDLEWARE IDL_FILES ../weather.qface TEMPLATE
                              qmlplugin)
set(QML_PLUGIN_OUTPUT_DIR "${CMAKE_BINARY_DIR}/imports/${MIDDLEWARE_URI_PATH}")

qt_add_qml_module(ApplicationImports
    PLUGIN_TARGET ApplicationImports
    OUTPUT_DIRECTORY ${QML_PLUGIN_OUTPUT_DIR}
    URI ${MIDDLEWARE_URI}
    VERSION ${MIDDLEWARE_VERSION}
    SOURCES plugin.cpp
    RESOURCE_PREFIX /
    NO_PLUGIN_OPTIONAL
    NO_GENERATE_PLUGIN_SOURCE
    NO_GENERATE_QMLTYPES
)

target_link_libraries(ApplicationImports PUBLIC
    WeatherServiceFrontend Qt::Core Qt::InterfaceFramework
)

add_custom_target(copy_qml_types ${CMAKE_COMMAND} -E copy_if_different
                                 ${MIDDLEWARE_TYPEINFO}
                                 ${QML_PLUGIN_OUTPUT_DIR}/ApplicationImports.qmltypes)

add_dependencies(ApplicationImports copy_qml_types)

