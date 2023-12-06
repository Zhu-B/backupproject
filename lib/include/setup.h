#ifndef BACKUPPROGRAM_SETUP_H
#define BACKUPPROGRAM_SETUP_H
#include <SDL_image.h>
#include <SDL.h>

class setup {
public:
    SDL_Surface* surface;
    int width;
    int height;
    SDL_Window* window;
    SDL_Renderer* renderer;
    SDL_Texture* texture;
    explicit setup(const char *file);
    ~setup();
};
#endif //BACKUPPROGRAM_SETUP_H
