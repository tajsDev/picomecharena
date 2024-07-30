const rl = @import("raylib");
const Player = @import("player.zig").Player;

const GameStatus = enum {
    notStarted,
    playing,
    paused,
    aborted,
    gameOver,
};

pub const Game = struct {
    currentStatus : GameStatus = undefined,
    newPlayer : Player,
};

pub fn init() Game {
    return Game { .currentStatus = undefined,
                .newPlayer = Player.new(),
    } ; 
}

pub fn process(play : Player ,tempX: i32 , tempY : i32) !void { 
    rl.drawTexture(play.sprite.texture,tempX,tempY,rl.Color.white);
        
 }


