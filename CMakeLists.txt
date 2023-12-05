cmake_minimum_required(VERSION 3.22)
project(backupprogram)

set(CMAKE_CXX_STANDARD 17)

add_executable(backupprogram main.cpp)

include(FetchContent)
set(FETCHCONTENT_QUIET FALSE)

# sdl2
FetchContent_Declare(
        SDL2
        GIT_REPOSITORY  https://github.com/libsdl-org/SDL.git
        GIT_TAG         release-2.28.5
        GIT_PROGRESS    TRUE
)

# sdl2_image
FetchContent_Declare(
        SDL2_IMAGE
        GIT_REPOSITORY  https://github.com/libsdl-org/SDL_image.git
        GIT_TAG         release-2.6.3
        GIT_PROGRESS    TRUE
)

# START ADDITION
set(SDL2IMAGE_INSTALL OFF)
set(BUILD_SHARED_LIBS FALSE)
# END ADDITION

FetchContent_MakeAvailable(
        SDL2
        SDL2_IMAGE)

set(SDL_LIBRARIES ${SDL_LIBRARIES} SDL2main SDL2-static SDL2_image-static)
target_include_directories("${PROJECT_NAME}" PRIVATE include)

#target_link_libraries("${PROJECT_NAME}" PRIVATE ${SDL_LIBRARIES})
target_link_libraries("${PROJECT_NAME}"
        SDL2::SDL2main
        SDL2::SDL2-static
        SDL2_image::SDL2_image-static)




#FetchContent_Declare(
#        opencv
#        GIT_REPOSITORY https://github.com/opencv/opencv.git
#        GIT_TAG        4.4.0
#)
#if (NOT opencv_POPULATED)
#    FetchContent_Populate(opencv)
#endif ()
#FetchContent_MakeAvailable(opencv)
#
## Find on pc
#set(OpenCV_DIR ${CMAKE_CURRENT_BINARY_DIR})
#include_directories(${OpenCV_INCLUDE_DIRS})
#find_package(OpenCV REQUIRED)
#target_link_libraries("${PROJECT_NAME}" ${OpenCV_LIBS})