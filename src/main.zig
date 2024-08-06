const rl = @import("raylib");
const Game = @import("game.zig");
const Player = @import("player.zig").Player;
const control = @import("controls.zig");

pub fn main() anyerror!void {
    // Initialization
    //--------------------------------------------------------------------------------------
    const screenWidth = 1000;
    const screenHeight = 500;

    rl.initWindow(screenWidth, screenHeight, "MechArena Pico");
    defer rl.closeWindow(); // Close window and OpenGL context

    rl.setTargetFPS(60); // Set our game to run at 60 frames-per-second
    //--------------------------------------------------------------------------------------
    var srtGame = Game.init();
    var cPlay = Player.new();
    // Main game loop
    while (!rl.windowShouldClose()) { // Detect window close button or ESC key
        // Draw
        //----------------------------------------------------------------------------------
        rl.beginDrawing();
        defer rl.endDrawing();
        //set up new player
        srtGame.currentStatus = Game.GameStatus.playing;
        cPlay.x = control.controlX(cPlay.x);
        cPlay.y = control.controlY(cPlay.y);
        try cPlay.process();
        rl.clearBackground(rl.Color.black);
        if(srtGame.currentStatus == undefined) {
        rl.drawText("Congrats! You created your first window!", 190, 200, 20, rl.Color.white);
        }
        
        //----------------------------------------------------------------------------------
    }
}
