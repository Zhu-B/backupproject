# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.8)
   message(FATAL_ERROR "CMake >= 2.8.0 required")
endif()
if(CMAKE_VERSION VERSION_LESS "2.8.3")
   message(FATAL_ERROR "CMake >= 2.8.3 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.8.3...3.24)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

if(CMAKE_VERSION VERSION_LESS 3.0.0)
  message(FATAL_ERROR "This file relies on consumers using CMake 3.0.0 or greater.")
endif()

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_cmake_targets_defined "")
set(_cmake_targets_not_defined "")
set(_cmake_expected_targets "")
foreach(_cmake_expected_target IN ITEMS zlib libjpeg-turbo libtiff libwebp libopenjp2 libpng IlmImf libprotobuf quirc ade opencv_core opencv_flann opencv_imgproc opencv_ml opencv_photo opencv_dnn opencv_features2d opencv_imgcodecs ocv.3rdparty.dshow ocv.3rdparty.ffmpeg opencv_videoio opencv_calib3d ocv.3rdparty.win32ui opencv_highgui opencv_objdetect opencv_stitching opencv_video opencv_gapi)
  list(APPEND _cmake_expected_targets "${_cmake_expected_target}")
  if(TARGET "${_cmake_expected_target}")
    list(APPEND _cmake_targets_defined "${_cmake_expected_target}")
  else()
    list(APPEND _cmake_targets_not_defined "${_cmake_expected_target}")
  endif()
endforeach()
unset(_cmake_expected_target)
if(_cmake_targets_defined STREQUAL _cmake_expected_targets)
  unset(_cmake_targets_defined)
  unset(_cmake_targets_not_defined)
  unset(_cmake_expected_targets)
  unset(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT _cmake_targets_defined STREQUAL "")
  string(REPLACE ";" ", " _cmake_targets_defined_text "${_cmake_targets_defined}")
  string(REPLACE ";" ", " _cmake_targets_not_defined_text "${_cmake_targets_not_defined}")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_cmake_targets_defined_text}\nTargets not yet defined: ${_cmake_targets_not_defined_text}\n")
endif()
unset(_cmake_targets_defined)
unset(_cmake_targets_not_defined)
unset(_cmake_expected_targets)


# Create imported target zlib
add_library(zlib STATIC IMPORTED)

# Create imported target libjpeg-turbo
add_library(libjpeg-turbo STATIC IMPORTED)

# Create imported target libtiff
add_library(libtiff STATIC IMPORTED)

set_target_properties(libtiff PROPERTIES
  INTERFACE_LINK_LIBRARIES "zlib"
)

# Create imported target libwebp
add_library(libwebp STATIC IMPORTED)

# Create imported target libopenjp2
add_library(libopenjp2 STATIC IMPORTED)

set_target_properties(libopenjp2 PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "OPJ_STATIC"
)

# Create imported target libpng
add_library(libpng STATIC IMPORTED)

set_target_properties(libpng PROPERTIES
  INTERFACE_LINK_LIBRARIES "zlib"
)

# Create imported target IlmImf
add_library(IlmImf STATIC IMPORTED)

set_target_properties(IlmImf PROPERTIES
  INTERFACE_LINK_LIBRARIES "zlib"
)

# Create imported target libprotobuf
add_library(libprotobuf STATIC IMPORTED)

set_target_properties(libprotobuf PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-src/3rdparty/protobuf/src"
)

# Create imported target quirc
add_library(quirc STATIC IMPORTED)

# Create imported target ade
add_library(ade STATIC IMPORTED)

set_target_properties(ade PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/3rdparty/ade/ade-0.1.1f/sources/ade/include"
)

# Create imported target opencv_core
add_library(opencv_core STATIC IMPORTED)

set_target_properties(opencv_core PROPERTIES
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:zlib>"
)

# Create imported target opencv_flann
add_library(opencv_flann STATIC IMPORTED)

set_target_properties(opencv_flann PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_core"
)

# Create imported target opencv_imgproc
add_library(opencv_imgproc STATIC IMPORTED)

set_target_properties(opencv_imgproc PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_core"
)

# Create imported target opencv_ml
add_library(opencv_ml STATIC IMPORTED)

set_target_properties(opencv_ml PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_core"
)

# Create imported target opencv_photo
add_library(opencv_photo STATIC IMPORTED)

set_target_properties(opencv_photo PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc"
)

# Create imported target opencv_dnn
add_library(opencv_dnn STATIC IMPORTED)

set_target_properties(opencv_dnn PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc;\$<LINK_ONLY:libprotobuf>"
)

# Create imported target opencv_features2d
add_library(opencv_features2d STATIC IMPORTED)

set_target_properties(opencv_features2d PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_core;opencv_flann;opencv_imgproc"
)

# Create imported target opencv_imgcodecs
add_library(opencv_imgcodecs STATIC IMPORTED)

set_target_properties(opencv_imgcodecs PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_core;opencv_imgproc;\$<LINK_ONLY:libjpeg-turbo>;\$<LINK_ONLY:libwebp>;\$<LINK_ONLY:libpng>;\$<LINK_ONLY:libtiff>;\$<LINK_ONLY:libopenjp2>;\$<LINK_ONLY:IlmImf>;\$<LINK_ONLY:zlib>"
)

# Create imported target ocv.3rdparty.dshow
add_library(ocv.3rdparty.dshow INTERFACE IMPORTED)

set_target_properties(ocv.3rdparty.dshow PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "HAVE_DSHOW"
)

# Create imported target ocv.3rdparty.ffmpeg
add_library(ocv.3rdparty.ffmpeg INTERFACE IMPORTED)

set_target_properties(ocv.3rdparty.ffmpeg PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "HAVE_FFMPEG_WRAPPER"
)

# Create imported target opencv_videoio
add_library(opencv_videoio STATIC IMPORTED)

set_target_properties(opencv_videoio PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_imgcodecs;opencv_core;opencv_imgproc;opencv_imgcodecs;\$<LINK_ONLY:ocv.3rdparty.dshow>;\$<LINK_ONLY:ocv.3rdparty.ffmpeg>"
)

# Create imported target opencv_calib3d
add_library(opencv_calib3d STATIC IMPORTED)

set_target_properties(opencv_calib3d PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_core;opencv_flann;opencv_imgproc;opencv_features2d"
)

# Create imported target ocv.3rdparty.win32ui
add_library(ocv.3rdparty.win32ui INTERFACE IMPORTED)

set_target_properties(ocv.3rdparty.win32ui PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "HAVE_WIN32UI"
  INTERFACE_LINK_LIBRARIES "user32;gdi32"
)

# Create imported target opencv_highgui
add_library(opencv_highgui STATIC IMPORTED)

set_target_properties(opencv_highgui PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_imgproc;opencv_imgcodecs;opencv_videoio;opencv_core;opencv_imgproc;opencv_imgcodecs;opencv_videoio;\$<LINK_ONLY:comctl32>;\$<LINK_ONLY:gdi32>;\$<LINK_ONLY:ole32>;\$<LINK_ONLY:setupapi>;\$<LINK_ONLY:ws2_32>;\$<LINK_ONLY:ocv.3rdparty.win32ui>"
)

# Create imported target opencv_objdetect
add_library(opencv_objdetect STATIC IMPORTED)

set_target_properties(opencv_objdetect PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;\$<LINK_ONLY:quirc>"
)

# Create imported target opencv_stitching
add_library(opencv_stitching STATIC IMPORTED)

set_target_properties(opencv_stitching PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_calib3d;opencv_core;opencv_flann;opencv_imgproc;opencv_features2d;opencv_calib3d"
)

# Create imported target opencv_video
add_library(opencv_video STATIC IMPORTED)

set_target_properties(opencv_video PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d"
)

# Create imported target opencv_gapi
add_library(opencv_gapi STATIC IMPORTED)

set_target_properties(opencv_gapi PROPERTIES
  INTERFACE_LINK_LIBRARIES "opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;opencv_video;opencv_core;opencv_flann;opencv_imgproc;opencv_dnn;opencv_features2d;opencv_calib3d;opencv_video;\$<LINK_ONLY:ade>;\$<LINK_ONLY:wsock32>;\$<LINK_ONLY:ws2_32>"
)

# Import target "zlib" for configuration "Debug"
set_property(TARGET zlib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(zlib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/3rdparty/lib/libzlibd.a"
  )

# Import target "libjpeg-turbo" for configuration "Debug"
set_property(TARGET libjpeg-turbo APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(libjpeg-turbo PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/3rdparty/lib/liblibjpeg-turbod.a"
  )

# Import target "libtiff" for configuration "Debug"
set_property(TARGET libtiff APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(libtiff PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C;CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/3rdparty/lib/liblibtiffd.a"
  )

# Import target "libwebp" for configuration "Debug"
set_property(TARGET libwebp APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(libwebp PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/3rdparty/lib/liblibwebpd.a"
  )

# Import target "libopenjp2" for configuration "Debug"
set_property(TARGET libopenjp2 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(libopenjp2 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/3rdparty/lib/liblibopenjp2d.a"
  )

# Import target "libpng" for configuration "Debug"
set_property(TARGET libpng APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(libpng PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/3rdparty/lib/liblibpngd.a"
  )

# Import target "IlmImf" for configuration "Debug"
set_property(TARGET IlmImf APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(IlmImf PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/3rdparty/lib/libIlmImfd.a"
  )

# Import target "libprotobuf" for configuration "Debug"
set_property(TARGET libprotobuf APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(libprotobuf PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/3rdparty/lib/liblibprotobufd.a"
  )

# Import target "quirc" for configuration "Debug"
set_property(TARGET quirc APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(quirc PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/3rdparty/lib/libquircd.a"
  )

# Import target "ade" for configuration "Debug"
set_property(TARGET ade APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ade PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/3rdparty/lib/libaded.a"
  )

# Import target "opencv_core" for configuration "Debug"
set_property(TARGET opencv_core APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_core PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_core460d.a"
  )

# Import target "opencv_flann" for configuration "Debug"
set_property(TARGET opencv_flann APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_flann PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_flann460d.a"
  )

# Import target "opencv_imgproc" for configuration "Debug"
set_property(TARGET opencv_imgproc APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_imgproc PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_imgproc460d.a"
  )

# Import target "opencv_ml" for configuration "Debug"
set_property(TARGET opencv_ml APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_ml PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_ml460d.a"
  )

# Import target "opencv_photo" for configuration "Debug"
set_property(TARGET opencv_photo APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_photo PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_photo460d.a"
  )

# Import target "opencv_dnn" for configuration "Debug"
set_property(TARGET opencv_dnn APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_dnn PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_dnn460d.a"
  )

# Import target "opencv_features2d" for configuration "Debug"
set_property(TARGET opencv_features2d APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_features2d PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_features2d460d.a"
  )

# Import target "opencv_imgcodecs" for configuration "Debug"
set_property(TARGET opencv_imgcodecs APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_imgcodecs PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_imgcodecs460d.a"
  )

# Import target "opencv_videoio" for configuration "Debug"
set_property(TARGET opencv_videoio APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_videoio PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_videoio460d.a"
  )

# Import target "opencv_calib3d" for configuration "Debug"
set_property(TARGET opencv_calib3d APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_calib3d PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_calib3d460d.a"
  )

# Import target "opencv_highgui" for configuration "Debug"
set_property(TARGET opencv_highgui APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_highgui PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_highgui460d.a"
  )

# Import target "opencv_objdetect" for configuration "Debug"
set_property(TARGET opencv_objdetect APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_objdetect PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_objdetect460d.a"
  )

# Import target "opencv_stitching" for configuration "Debug"
set_property(TARGET opencv_stitching APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_stitching PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_stitching460d.a"
  )

# Import target "opencv_video" for configuration "Debug"
set_property(TARGET opencv_video APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_video PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_video460d.a"
  )

# Import target "opencv_gapi" for configuration "Debug"
set_property(TARGET opencv_gapi APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(opencv_gapi PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "C:/Users/Rate/Desktop/cs3520/backupproject/cmake-build-debug/_deps/opencv-build/lib/libopencv_gapi460d.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
