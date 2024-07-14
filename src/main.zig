// raylib-zig (c) Nikolas Wipper 2023

const rl = @import("raylib");
const game = @import("game.zig");
pub fn main() anyerror!void {
    // Initialization
    //--------------------------------------------------------------------------------------
    const screenWidth = 800;
    const screenHeight = 450;

    rl.initWindow(screenWidth, screenHeight, "MechArena Pico");
    defer rl.closeWindow(); // Close window and OpenGL context

    rl.setTargetFPS(60); // Set our game to run at 60 frames-per-second
    //--------------------------------------------------------------------------------------

    // Main game loop
    while (!rl.windowShouldClose()) { // Detect window close button or ESC key
        // Update
        //----------------------------------------------------------------------------------
        // TODO: Update your variables here
        //----------------------------------------------------------------------------------
        const mouseX = rl.getMouseX();
        const mouseY =rl.getMouseY();
        // Draw
        //----------------------------------------------------------------------------------
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(rl.Color.black);
        rl.drawCircle(mouseX,mouseY,10.0,rl.Color.red);
        rl.drawText("Congrats! You created your first window!", 190, 200, 20, rl.Color.white);
        //----------------------------------------------------------------------------------
    }
}
