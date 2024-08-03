const rl = @import("raylib");

pub const speed = 2;

pub fn controlX(x:i32) i32 {
    var newX = x;
    const isRight = (rl.isKeyDown(rl.KeyboardKey.key_right) || rl.isKeyDown(rl.KeyboardKey.key_d));
    if (isRight) newX+= speed;
    if (rl.isKeyDown(rl.KeyboardKey.key_left) || rl.isKeyDown(rl.keyboardKey.key_a)) newX-= speed;
    return newX;
}

pub fn controlY(y:i32) i32 {
    var newY = y;
    if (rl.isKeyDown(rl.KEY_UP) || rl.isKeyDown(rl.KEY_W)) newY-=speed;
    if (rl.isKeyDown(rl.KEY_DOWN) || rl.isKeyDown(rl.KEY_S)) newY+=speed;
    return newY;
}
