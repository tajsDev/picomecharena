const rl = @import("raylib");
const Player = @import("player.zig").Player;
const controls = @import("controls.zig");
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
    return Game { .currentStatus = GameStatus.notStarted,
                .newPlayer = Player.new(),
    } ; 
}

pub fn process(play : Player) !void {
    play.pos.x = controls.controlX(play.pos.x);
    play.pos.y = controls.controlY(play.pos.y);
    const tempX = play.pos.x;
    const tempY = play.pos.y;
    rl.drawTexture(play.sprite.texture,tempX,tempY,rl.Color.white);
        
 }


