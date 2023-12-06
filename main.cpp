#include <iostream>
#include <SDL.h>
#include <SDL_image.h>
#include <cmath>
#define STB_HEXWAVE_IMPLEMENTATION
#include "lib/stb/stb_hexwave.h"
#include "setup.h"

int main(int argc, char* argv[]) {
    // Initialize SDL
    if (SDL_Init(SDL_INIT_VIDEO) < 0) {
        fprintf(stderr, "SDL could not initialize! SDL_Error: %s\n", SDL_GetError());
        return 1;
    }

    // Initialize SDL_image
    if (IMG_Init(IMG_INIT_PNG) < 0) {
        fprintf(stderr, "SDL_image could not initialize! SDL_image Error: %s\n", IMG_GetError());
        SDL_Quit();
        return 1;
    }

    // Load an image
    SDL_Surface* surface = IMG_Load("C:/Users/Rate/Desktop/cs3520/backupproject/sample/test.png");
    if (surface == NULL) {
        fprintf(stderr, "Unable to load image! SDL_image Error: %s\n", IMG_GetError());
        IMG_Quit();
        SDL_Quit();
        return 1;
    }

    // Access pixel data
    Uint32* pixels = (Uint32*)surface->pixels;
    int width = surface->w;
    int height = surface->h;

    // Create a window
    SDL_Window* window = SDL_CreateWindow("SDL Image Example", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, width + 30, height, SDL_WINDOW_SHOWN);
    if (window == NULL) {
        fprintf(stderr, "Window could not be created! SDL_Error: %s\n", SDL_GetError());
        IMG_Quit();
        SDL_Quit();
        return 1;
    }

    // Create a renderer
    SDL_Renderer* renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
    if (renderer == NULL) {
        fprintf(stderr, "Renderer could not be created! SDL_Error: %s\n", SDL_GetError());
        SDL_DestroyWindow(window);
        IMG_Quit();
        SDL_Quit();
        return 1;
    }

    // Create a texture from the modified surface
    SDL_Texture* texture = SDL_CreateTextureFromSurface(renderer, surface);
    SDL_FreeSurface(surface);

    if (texture == NULL) {
        fprintf(stderr, "Unable to create texture from surface! SDL_Error: %s\n", SDL_GetError());
        SDL_DestroyRenderer(renderer);
        SDL_DestroyWindow(window);
        IMG_Quit();
        SDL_Quit();
        return 1;
    }

    // Define toolbar button dimensions and positions
    SDL_Rect green = {width + 5, 5, 20, 20};
    SDL_Rect red = {width + 5, 30, 20, 20};
    SDL_Rect blue = {width + 5, 55, 20, 20};
    SDL_Rect customize = {width + 5, 80, 20, 20};

    int rightWhiteSpace = 30; // Adjust the white space width

    SDL_Rect destRect = {width, 0, surface->w, surface->h};

    // Main loop
    SDL_Event e;
    bool quit = false;

    while (!quit) {
        while (SDL_PollEvent(&e) != 0) {
            if (e.type == SDL_QUIT) {
                quit = true;
            } else if (e.type == SDL_MOUSEBUTTONDOWN) {
                int mouseX;
                int mouseY;
                SDL_GetMouseState(&mouseX, &mouseY);

                std::cout << mouseX << " : " << mouseY << std::endl;

            }
        }

        // Clear the renderer
        SDL_RenderClear(renderer);

        // Render the texture with white space on the left side
        SDL_Rect imageRect = {0, 0, width, height};
        SDL_RenderCopy(renderer, texture, NULL, &imageRect);

        // Render the texture
        SDL_RenderCopy(renderer, texture, NULL, &destRect);

        SDL_Rect whiteSpaceRect = {width, 0, rightWhiteSpace, height}; // Adjust the dimensions of the white space
        SDL_SetRenderDrawColor(renderer, 255, 255, 255, 255); // Set the color to white
        SDL_RenderFillRect(renderer, &whiteSpaceRect);

        // Draw the toolbar buttons
        SDL_SetRenderDrawColor(renderer, 0, 255, 0, 255);
        SDL_RenderFillRect(renderer, &green);

        SDL_SetRenderDrawColor(renderer, 255, 0, 0, 255);
        SDL_RenderFillRect(renderer, &red);

        SDL_SetRenderDrawColor(renderer, 0, 0, 255, 255);
        SDL_RenderFillRect(renderer, &blue);

        SDL_SetRenderDrawColor(renderer, 200, 200, 200, 255);
        SDL_RenderFillRect(renderer, &customize);

        SDL_SetRenderDrawColor(renderer, 255, 255, 255, 255);
        SDL_RenderDrawRect(renderer, &green);
        SDL_RenderDrawRect(renderer, &red);

        // Present the renderer
        SDL_RenderPresent(renderer);
    }

    // Cleanup
    SDL_DestroyTexture(texture);
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    IMG_Quit();
    SDL_Quit();

    return 0;
}