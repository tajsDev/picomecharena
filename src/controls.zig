const rl = @import("raylib");

pub const speed = 2;

pub fn controlX(x:i32) i32 {
    var newX = x;
    const isRight = (rl.isKeyDown(rl.KeyboardKey.key_right) or rl.isKeyDown(rl.KeyboardKey.key_d));
    if (isRight) newX+= speed;
    if (rl.isKeyDown(rl.KeyboardKey.key_left) or rl.isKeyDown(rl.KeyboardKey.key_a)) newX-= speed;
    return newX;
}

pub fn controlY(y:i32) i32 {
    var newY = y;
    if (rl.isKeyDown(rl.KeyboardKey.key_up) or rl.isKeyDown(rl.KeyboardKey.key_w)) newY-=speed;
    if (rl.isKeyDown(rl.KeyboardKey.key_down) or rl.isKeyDown(rl.KeyboardKey.key_s)) newY+=speed;
    return newY;
}
