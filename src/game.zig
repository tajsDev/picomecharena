const rl = @import("raylib");
const Player = @import("player.zig").Player;
const controls = @import("controls.zig");
pub const GameStatus = enum {
    notStarted,
    playing,
    paused,
    aborted,
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


}

