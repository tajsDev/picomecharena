const rl = @import("raylib");
pub const speed = 4;

pub const Pos =  struct {
    xSpeed:i32,
    ySpeed:i32,
    pub fn new() Pos {
        return Pos {
            .xSpeed = 0,
            .ySpeed = 0
        };
    }
};
//this f**cking sucks
pub fn controlInput(x:i32,y:i32) Pos {
    var newX:i32 = 0;
    var newY:i32 = 0;
    var currentSpeed:i32 = speed;
    var result = Pos.new();

    //right
    if (rl.isKeyDown(rl.KeyboardKey.key_right) or 
    rl.isKeyDown(rl.KeyboardKey.key_d)) newX = 1;
    //left
    if (rl.isKeyDown(rl.KeyboardKey.key_left) or 
    rl.isKeyDown(rl.KeyboardKey.key_a)) newX  = -1;
    //down
    if (rl.isKeyDown(rl.KeyboardKey.key_up) or 
    rl.isKeyDown(rl.KeyboardKey.key_w)) newY = -1;
    //up
    if (rl.isKeyDown(rl.KeyboardKey.key_down) 
    or rl.isKeyDown(rl.KeyboardKey.key_s)) newY = 1;
    //calcuate diag movement so not to go fast
    if(newX != 0 and newY != 0 ) {
        var aVal:f32 = @floatFromInt((speed * speed)/2);
        aVal = @sqrt(aVal);
        currentSpeed =  @intFromFloat(aVal);

    }
    const currX = x + (currentSpeed * newX);

    const currY = y + (currentSpeed * newY);

    result.xSpeed = currX;
    result.ySpeed = currY;

    return result;
}
