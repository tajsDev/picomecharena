const rl = @import("raylib");
const Player = @import("player.zig").Player;
const control = @import("controls.zig");
const back = @import("background.zig").Background;
const std = @import("std");
const Pos = @import("controls.zig").Pos;

pub fn main() anyerror!void {
    const screenWidth = 1600;
    const screenHeight = 900;

    rl.initWindow(screenWidth, screenHeight, "MechArena Pico");
    defer rl.closeWindow(); // Close window and OpenGL context

    rl.setTargetFPS(60); // Set our game to run at 60 frames-per-second
    //start the game
    var cPlay = Player.new();
    const cBack = back.new();
    var cPlayPos = Pos.new();
    var camX: f32 = 0.0;
    var camY: f32 = 0.0;
    //preload the game by adding all of the textures
    defer rl.unloadTexture(cPlay.texture);
    defer rl.unloadTexture(cBack.texture);
    while (!rl.windowShouldClose()) { // Detect window close button or ESC key
        rl.beginDrawing();
        defer rl.endDrawing();
        rl.beginMode2D(cPlay.cam);
        defer rl.endMode2D();
        cPlayPos = control.controlInput(cPlay.x, cPlay.y);
        cPlay.x = cPlayPos.xSpeed;
        cPlay.y = cPlayPos.ySpeed;
        camX = @floatFromInt(cPlay.x);
        camY = @floatFromInt(cPlay.y);
        //drawing heirarchy
        cPlay.cam.target = .{ .x = camX + 20.0, .y = camY + 20.0 };
        //background
        try cBack.process();
        //player and other stuff
        try cPlay.process();

        //effects
        rl.clearBackground(rl.Color.black);
    }
}
