cmake_minimum_required(VERSION 3.22)
project(backupprogram)

set(CMAKE_CXX_STANDARD 17)

add_executable(backupprogram
        main.cpp
        lib/stb/AudioFile.h)

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


set(SDL2IMAGE_INSTALL OFF)
set(BUILD_SHARED_LIBS FALSE)


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




FetchContent_Declare(
        CImg
        GIT_REPOSITORY  https://github.com/GreycLab/CImg.git
        GIT_TAG         master
)

FetchContent_MakeAvailable(CImg)

target_link_libraries(${PROJECT_NAME}
        CImg::CImg)