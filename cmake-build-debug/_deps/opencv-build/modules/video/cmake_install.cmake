# Install script for directory: C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-src/modules/video

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/backupproject")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Program Files/JetBrains/CLion 2023.2.2/bin/mingw/bin/objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/x64/mingw/staticlib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_video460d.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2" TYPE FILE OPTIONAL FILES "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-src/modules/video/include/opencv2/video.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/video" TYPE FILE OPTIONAL FILES "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-src/modules/video/include/opencv2/video/background_segm.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/video/detail" TYPE FILE OPTIONAL FILES "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-src/modules/video/include/opencv2/video/detail/tracking.detail.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/video/legacy" TYPE FILE OPTIONAL FILES "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-src/modules/video/include/opencv2/video/legacy/constants_c.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/video" TYPE FILE OPTIONAL FILES "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-src/modules/video/include/opencv2/video/tracking.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/opencv2/video" TYPE FILE OPTIONAL FILES "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-src/modules/video/include/opencv2/video/video.hpp")
endif()

