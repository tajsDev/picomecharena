const rl = @import("raylib");

pub fn new() rl.Texture2D {
    var startImage = rl.loadImage("images/download.png");
    rl.imageResize(&startImage,160,160);
    defer rl.unloadImage(startImage);
    const startText = rl.loadTextureFromImage(startImage);
    return startText;
}

