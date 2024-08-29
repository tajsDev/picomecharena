const rl = @import("raylib");
const Player = @import("player.zig").Player;
const control = @import("controls.zig");
const back = @import("background.zig").Background;

pub fn main() anyerror!void {
    const screenWidth = 1600;
    const screenHeight = 900;

    rl.initWindow(screenWidth, screenHeight, "MechArena Pico");
    defer rl.closeWindow(); // Close window and OpenGL context

    rl.setTargetFPS(60); // Set our game to run at 60 frames-per-second
    //start the game
    var cPlay = Player.new();
    const cBack = back.new();
    //preload the game by adding all of the textures
    defer rl.unloadTexture(cPlay.texture);
    defer rl.unloadTexture(cBack.texture);
    while (!rl.windowShouldClose()) { // Detect window close button or ESC key
        rl.beginDrawing();
        defer rl.endDrawing();
        cPlay.x = control.controlX(cPlay.x);
        cPlay.y = control.controlY(cPlay.y);
        //drawing heirarchy

        //background
        try cBack.process();
        //player and other stuff
        try cPlay.process();

        //effects
        rl.clearBackground(rl.Color.black);
    }
}
