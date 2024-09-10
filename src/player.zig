const std = @import("std");
const rl = @import("raylib");
const Sprite = @import("sprite.zig");

pub const Player = struct {
    texture: rl.Texture2D,
    x: i32,
    y: i32,
    cam: rl.Camera2D,
    pub fn new() Player {
        return Player{
            .texture = Sprite.new(),
            .cam = CameraInit(),
            .x = 0,
            .y = 0,
        };
    }
    pub fn process(self: Player) !void {
        rl.drawTexture(self.texture, self.x, self.y, rl.Color.white);
    }
};

pub fn CameraInit() rl.Camera2D {
    return rl.Camera2D{
        .target = .{ .x = 0.0, .y = 0.0 }, // c.Vector2
        .offset = .{ .x = 800.0, .y = 450.0 }, // c.Vector2
        .rotation = 0.0,
        .zoom = 1.0,
    };
}
