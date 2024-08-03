// raylib-zig (c) Nikolas Wipper 2023

const rl = @import("raylib");
const Game = @import("game.zig");
pub fn main() anyerror!void {
    // Initialization
    //--------------------------------------------------------------------------------------
    const screenWidth = 1000;
    const screenHeight = 500;

    rl.initWindow(screenWidth, screenHeight, "MechArena Pico");
    defer rl.closeWindow(); // Close window and OpenGL context

    rl.setTargetFPS(60); // Set our game to run at 60 frames-per-second
    //--------------------------------------------------------------------------------------
    var srtGame: Game = Game.init();
    // Main game loop
    while (!rl.windowShouldClose()) { // Detect window close button or ESC key
        // Draw
        //----------------------------------------------------------------------------------
        rl.beginDrawing();
        defer rl.endDrawing();
        try Game.process(srtGame.newPlayer) ;
        rl.clearBackground(rl.Color.black);
        if(srtGame.currentStatus == undefined) {
        rl.drawText("Congrats! You created your first window!", 190, 200, 20, rl.Color.white);
        }
        
        //----------------------------------------------------------------------------------
    }
}
