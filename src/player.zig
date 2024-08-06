const std = @import("std");
const rl = @import("raylib");
const Health = @import("health.zig").Health;
const Sprite = @import("sprite.zig");
const control = @import("controls.zig");
pub const Player = struct {
    health:i32,
    texture:rl.Texture2D,
    x:i32,
    y:i32,

    pub fn new() Player {

       return Player{
         .health = 100,
         .texture = Sprite.new(),
         .x = 0,
         .y = 0,
     };
    }
    pub fn process(self: Player) !void {
       rl.drawTexture(self.texture,self.x,self.y,rl.Color.white);
    }
};
