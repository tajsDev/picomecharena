const std = @import("std");
const rl = @import("raylib");
const Health = @import("health.zig").Health;
const Position = @import("pos.zig").Position;
const Sprite = @import("sprite.zig").Sprite;

pub const Player = struct {
    pos:Position,
    health:Health,
    sprite:Sprite,


    pub fn new() Player {
        const playerSprite = Sprite.new();

        return Player{
         .pos = Position.new(100, 100),
         .health = Health.new(100),
         .sprite = playerSprite,
     };
    }
};
