set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui InterfaceFramework)

qt_add_plugin(WeatherServiceBackend_simulation PLUGIN_TYPE interfaceframework)

set_target_properties(WeatherServiceBackend_simulation PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/interfaceframework)

qt_ifcodegen_extend_target(WeatherServiceBackend_simulation
    IDL_FILES ../weather.qface
    TEMPLATE backend_simulator
)

target_link_libraries(WeatherServiceBackend_simulation PUBLIC
    WeatherServiceFrontend
)
