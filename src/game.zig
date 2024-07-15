

const rl = @import("raylib");
const player = @import("player.zig");

const GameStatus = enum {
    notStarted,
    playing,
    paused,
    aborted,
    gameOver,
};

pub const Game = struct {
    currentStatus : GameStatus = undefined,
};
pub fn init()!void {
    //const newPlayer = player.initPlayer();
}

