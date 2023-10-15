set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui InterfaceFramework)

qt_add_plugin(WeatherServiceBackend PLUGIN_TYPE interfaceframework)

set_target_properties(WeatherServiceBackend PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/interfaceframework)

qt_ifcodegen_extend_target(WeatherServiceBackend
    IDL_FILES ../weather.qface
    TEMPLATE backend_qtro
)

target_link_libraries(WeatherServiceBackend PUBLIC
    WeatherServiceFrontend
)
