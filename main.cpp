#include "raylib.h"

int main() {
    InitWindow(800, 600, "raylib window on Mac");
    SetTargetFPS(60);

    while (!WindowShouldClose()) {
        BeginDrawing();
        ClearBackground(RAYWHITE);
        DrawText("Hello world!", 200, 200, 30, DARKGREEN);
        EndDrawing();
    }

    CloseWindow();
    return 0;
}
