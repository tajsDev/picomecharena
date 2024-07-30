const rl = @import("raylib");

pub const Sprite = struct {
    texture: rl.Texture2D,
    width: i32,
    height: i32,

    pub fn new() Sprite {
        var startImage = rl.loadImage("images/download.png");
        rl.imageResize(&startImage,160,160);
        defer rl.unloadImage(startImage);
        const startText = rl.loadTextureFromImage(startImage);
        return Sprite{
            .texture = startText,
            .width = 16, // Example width
            .height = 16, // Example height
        };
    }
};

