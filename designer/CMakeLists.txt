set(CMAKE_INCLUDE_CURRENT_DIR ON)

find_package(Qt6 REQUIRED COMPONENTS InterfaceFramework)

qt_ifcodegen_generate(
    IDL_FILES ../weather.qface
    TEMPLATE designer_mock
    OUTPUT_DIR ${CMAKE_CURRENT_SOURCE_DIR}
)
