const std = @import("std");
const rl = @import("raylib");
const Health = @import("health").Health;
const Position = @import("position").Position;
const Sprite = @import("sprite").Sprite;

pub const Player = struct {
    pos:Position,
    health:Health,
    sprite:Sprite,
};

fn initPlayer(texturePath: []const u8) Player {
    var playerSprite = Sprite.new(texturePath);

    return Player{
        .pos = Position.new(100.0, 100.0),
        .health = Health.new(100,100),
        .sprite = playerSprite,
    };
}
