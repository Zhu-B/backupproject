#include "../include/setup.h"
#include <SDL_image.h>
#include <SDL.h>
#include <iostream>

setup::setup(const char *file) {

    int leftWhiteSpace = 30;

    // Load image
    surface = IMG_Load("C:/Users/Rate/Desktop/cs3520/backupproject/sample/test.png");
    if (surface == NULL) {
        fprintf(stderr, "Unable to load image! SDL_image Error: %s\n", IMG_GetError());
        IMG_Quit();
        SDL_Quit();
    }

    // Access pixel data
    Uint32* pixels = (Uint32*)surface->pixels;
    width = surface->w;
    height = surface->h;

    // Create window
    window = SDL_CreateWindow("SDL Image Example",
                              SDL_WINDOWPOS_UNDEFINED,
                              SDL_WINDOWPOS_UNDEFINED,
                              width + leftWhiteSpace,
                              height,
                              SDL_WINDOW_SHOWN);
    if (window == NULL) {
        fprintf(stderr, "Window could not be created! SDL_Error: %s\n", SDL_GetError());
        IMG_Quit();
        SDL_Quit();
    }

    // Create renderer
    renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
    if (renderer == NULL) {
        fprintf(stderr, "Renderer could not be created! SDL_Error: %s\n", SDL_GetError());
        SDL_DestroyWindow(window);
        IMG_Quit();
        SDL_Quit();
    }

    // Create texture from surface
    texture = SDL_CreateTextureFromSurface(renderer, surface);
    SDL_FreeSurface(surface);
    if (texture == NULL) {
        fprintf(stderr, "Unable to create texture from surface! SDL_Error: %s\n", SDL_GetError());
        SDL_DestroyRenderer(renderer);
        SDL_DestroyWindow(window);
        IMG_Quit();
        SDL_Quit();
    }

//    // buttons //////////////// buttons ///////////////// buttons //////////////// buttons //
//    SDL_Rect blurButtonRect = {5, 0, 20, 60};
//    SDL_Rect resizeButtonRect = {5, 70, 20, 60};
//
//    // space for image
//    SDL_Rect destRect = {leftWhiteSpace, 0, surface->w, surface->h};
//
//    // Main loop
//    SDL_Event e;
//    bool quit = false;
//
//    while (!quit) {
//        while (SDL_PollEvent(&e) != 0) {
//            if (e.type == SDL_QUIT) {
//                quit = true;
//            } else if (e.type == SDL_MOUSEBUTTONDOWN) {
//                int mouseX;
//                int mouseY;
//                SDL_GetMouseState(&mouseX, &mouseY);
//
//                std::cout << mouseX << " : " << mouseY << std::endl;
//
//            }
//        }
//
//        // Clear the renderer
//        SDL_RenderClear(renderer);
//
//
//
//        // Render the texture with white space on the left side
//
//        SDL_Rect imageRect = {leftWhiteSpace, 0, width - leftWhiteSpace, height};
//        SDL_RenderCopy(renderer, texture, NULL, &imageRect);
//
//        SDL_Rect whiteSpaceRect = {0, 0, leftWhiteSpace, height}; // Adjust the dimensions of the white space
//        SDL_SetRenderDrawColor(renderer, 255, 255, 255, 255); // Set the color to white
//        SDL_RenderFillRect(renderer, &whiteSpaceRect);
//
//        // Render the texture
//        SDL_RenderCopy(renderer, texture, NULL, &destRect);
//
//        // Draw the toolbar buttons
//        SDL_SetRenderDrawColor(renderer, 200, 200, 200, 255);
//        SDL_RenderFillRect(renderer, &blurButtonRect);
//        SDL_RenderFillRect(renderer, &resizeButtonRect);
//
//        SDL_SetRenderDrawColor(renderer, 0, 0, 200, 255);
//        SDL_RenderDrawRect(renderer, &blurButtonRect);
//        SDL_RenderDrawRect(renderer, &resizeButtonRect);
//
//        // Present the renderer
//        SDL_RenderPresent(renderer);
//    }
//
//    // Cleanup
//    SDL_DestroyTexture(texture);
//    SDL_DestroyRenderer(renderer);
//    SDL_DestroyWindow(window);
//    IMG_Quit();
//    SDL_Quit();

}