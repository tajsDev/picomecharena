const std = @import("std");
const rl = @import("raylib");
const Sprite = @import("sprite.zig");

pub const Player = struct {
    texture:rl.Texture2D,
    x:i32,
    y:i32,

    pub fn new() Player {

       return Player{
         .texture = Sprite.new(),
         .x = 0,
         .y = 0,
     };
    }
    pub fn process(self: Player) !void {
       rl.drawTexture(self.texture,self.x,self.y,rl.Color.white);
    }
};
