set(CMAKE_C_COMPILER /usr/bin/gcc830 CACHE PATH "" FORCE)
set(CMAKE_CXX_COMPILER /usr/bin/g++830 CACHE PATH "" FORCE)

function(get_system_info name)
  IF (name MATCHES "Linux")
    MESSAGE(STATUS "current platform: Linux ")
  ELSEIF (name MATCHES "Windows")
    MESSAGE(STATUS "current platform: Windows")
  ELSEIF (name MATCHES "FreeBSD")
    MESSAGE(STATUS "current platform: FreeBSD")
  ELSE ()
    MESSAGE(STATUS "other platform: ${name}")
  ENDIF (name MATCHES "Linux")
endfunction()

if (CMAKE_SYSTEM_NAME)
  message(STATUS "cmake_system_name ${CMAKE_SYSTEM_NAME}")
  get_system_info(${CMAKE_SYSTEM_NAME})
endif()

if (CMAKE_HOST_SYSTEM_NAME)
  message(STATUS "cmake_host_system_name ${CMAKE_HOST_SYSTEM_NAME}")
  get_system_info(${CMAKE_HOST_SYSTEM_NAME})
endif()

IF (WIN32)
  MESSAGE(STATUS "Now is windows")
ELSEIF (APPLE)
  MESSAGE(STATUS "Now is Apple systens.")
ELSEIF (UNIX)
  MESSAGE(STATUS "Now is UNIX-like OS's.")
ENDIF ()

# when you to run this cmake file, use
#
# $ cmake -P cmake_get_os_info.cmake
