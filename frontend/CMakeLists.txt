cmake_minimum_required(VERSION 3.16)
project(WeatherServiceFrontend LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Qml Quick)
find_package(Qt6 REQUIRED COMPONENTS InterfaceFramework)

qt_add_library(WeatherServiceFrontend)

qt_add_qml_module(WeatherServiceFrontend
    URI com.qtws.weather
    VERSION 1.0
)

qt_ifcodegen_extend_target(WeatherServiceFrontend
    IDL_FILES ../weather.qface
    TEMPLATE frontend
    EXTRA_TEMPLATE_SEARCH_PATH ${CMAKE_CURRENT_LIST_DIR}
)

set_target_properties(WeatherServiceFrontend PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
