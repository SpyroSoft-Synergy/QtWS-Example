cmake_minimum_required(VERSION 3.16)
project(WeatherServiceServer LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui RemoteObjects IfRemoteObjectsHelperPrivate)
qt_add_executable(WeatherServiceServer
    WeatherServiceServer.h WeatherServiceServer.cpp
    WeatherServiceImpl.h WeatherServiceImpl.cpp
    main.cpp)

qt_ifcodegen_extend_target(WeatherServiceServer
    IDL_FILES ../weather.qface
    TEMPLATE server_qtro)

set_target_properties(WeatherServiceServer PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

target_link_libraries(WeatherServiceServer PUBLIC
     Qt::RemoteObjects
     Qt::IfRemoteObjectsHelperPrivate
     Qt::Core
     WeatherServiceFrontend
)

target_include_directories(WeatherServiceServer PUBLIC
                          "${CMAKE_CURRENT_SOURCE_DIR}"
                          )
