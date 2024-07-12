

const rl = @import("raylib");

const GameStatus = enum {
    notStarted,
    playing,
    paused,
    aborted,
    gameOver,
};

const Game = struct {
    currentStatus : GameStatus = undefined,
};

