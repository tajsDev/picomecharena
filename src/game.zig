const rl = @import("raylib");
const Player = @import("player.zig").Player;
const controls = @import("controls.zig");
pub const GameStatus = enum {
    notStarted,
    paused,
    flight,
    land,
    exit,
    main,
    gameOver,
};

pub const Game = struct {
    currentStatus : GameStatus = undefined,
    
};

pub fn init() Game {
    return Game { .currentStatus = GameStatus.notStarted,
    } ; 
}
pub fn process() !void {
    //preloading 

}
pub fn preload() !void {

}


