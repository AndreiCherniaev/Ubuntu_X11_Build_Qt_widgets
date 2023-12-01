cmake_minimum_required(VERSION 3.18)
include_guard(GLOBAL)

#set(CMAKE_GENERATOR "Ninja")
#can't off this set(FEATURE_pcre2 OFF)
#set(FEATURE_opengl OFF)
set(FEATURE_ico OFF)
#set(FEATURE_xcb OFF)
#set(FEATURE_xcb_xlib OFF)
set(FEATURE_network ON)
set(FEATURE_sctp OFF)
set(FEATURE_widgets ON)
#enable signal-slot
#set(FEATURE_dbus OFF)
#set(FEATURE_dbus_linked OFF)

#set(FEATURE_gui ON)
#set(FEATURE_sqlmodel OFF)
#set(FEATURE_sql OFF)
set(FEATURE_androiddeployqt OFF)
#set(testlib OFF)
#set(X11_SUPPORTED OFF) # more https://bugreports.qt.io/browse/QTBUG-109028
#set(FEATURE_c89 OFF)
#set(FEATURE_c99 OFF)
#set(FEATURE_c11 OFF)
#set(FEATURE_pkg_config OFF)
#set(FEATURE_testlib OFF)
#set(FEATURE_translation OFF)
#set(FEATURE_xml OFF)
#set(FEATURE_backtrace OFF)
#set(FEATURE_animation OFF)
#set(FEATURE_intelcet OFF)
#set(BUILD_WITH_PCH OFF)
#set(FEATURE_x86intrin OFF)
#build static Qt 
set(BUILD_SHARED_LIBS ON) #Build Qt statically (OFF) or dynamically (ON)
#set(FEATURE_static ON)
#no qmake
#set(FEATURE_qmake OFF)

set(CMAKE_C_FLAGS_INIT "static")
set(CMAKE_CXX_FLAGS_INIT "static")
set(CMAKE_BUILD_TYPE "Debug")

include(CMakeInitializeConfigs)

function(cmake_initialize_per_config_variable _PREFIX _DOCSTRING)
  if (_PREFIX MATCHES "CMAKE_(C|CXX|ASM)_FLAGS")
    set(CMAKE_${CMAKE_MATCH_1}_FLAGS_INIT "${QT_COMPILER_FLAGS}")
        
    foreach (config DEBUG RELEASE MINSIZEREL RELWITHDEBINFO)
      if (DEFINED QT_COMPILER_FLAGS_${config})
        set(CMAKE_${CMAKE_MATCH_1}_FLAGS_${config}_INIT "${QT_COMPILER_FLAGS_${config}}")
      endif()
    endforeach()
  endif()


  if (_PREFIX MATCHES "CMAKE_(SHARED|MODULE|EXE)_LINKER_FLAGS")
    foreach (config SHARED MODULE EXE)
      set(CMAKE_${config}_LINKER_FLAGS_INIT "${QT_LINKER_FLAGS}")
    endforeach()
  endif()

  _cmake_initialize_per_config_variable(${ARGV})
endfunction()
