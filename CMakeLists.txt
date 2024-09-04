cmake_minimum_required(VERSION 3.16)

project(MockQt VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick Multimedia)

qt_add_executable(appMockQt
    main.cpp
)

qt_add_qml_module(appMockQt
    URI MockQt
    VERSION 1.0
    QML_FILES
        AppHomeScreen.qml
        StatusBar.qml
        main.qml
        AppSettings.qml
        AppManager.qml
        AppMediaPlay.qml
        AppClimate.qml
    RESOURCES
        assets/icon/youtube.png
        assets/icon/wifi.png
        assets/icon/volume-mute.png
        assets/icon/volume-down.png
        assets/icon/telephone.png
        assets/icon/settings.png
        assets/icon/messeges.png
        assets/icon/menu.png
        assets/icon/map.png
        assets/icon/home.png
        assets/icon/high-volume.png
        assets/icon/contact-book.png
        assets/icon/climate.png
        assets/icon/back.png
        assets/icon/calendar.png
        assets/icon/volume_icon.png
        assets/icon/resume_icon.png
        assets/icon/repeat_icon.png
        assets/icon/previous_icon.png
        assets/icon/pause_icon.png
        assets/icon/next_icon.png
        assets/background/homebackground.png
        assets/background/backgroundmedia.jpg
        assets/background/climatebackgroung.jpg
    SOURCES
        MusicPlayer.h
        MusicPlayer.cpp
)

set_target_properties(appMockQt PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appMockQt
    PRIVATE Qt6::Quick Qt6::Multimedia
)

include(GNUInstallDirs)
install(TARGETS appMockQt
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
