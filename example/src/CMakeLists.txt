cmake_minimum_required(VERSION 3.16)
project(myexample LANGUAGES CXX)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Widgets)

qt_standard_project_setup()

qt_add_executable(${PROJECT_NAME}
    client.cpp client.h
    main.cpp
)

target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Widgets
)

install(TARGETS ${PROJECT_NAME}
    RUNTIME DESTINATION "${INSTALL_EXAMPLEDIR}"
    BUNDLE DESTINATION "${INSTALL_EXAMPLEDIR}"
    LIBRARY DESTINATION "${INSTALL_EXAMPLEDIR}"
)
