const rl = @import("raylib");


pub const Background = struct {
    texture: rl.Texture2D,
    pub fn new() Background {
        const startImage = rl.loadImage("images/background.png");
        defer rl.unloadImage(startImage);
        const startText = rl.loadTextureFromImage(startImage);
        return Background {
            .texture = startText
        };
    }

    pub fn process(backg : Background) !void  {
        rl.drawTexture(backg.texture,0,0,rl.Color.white);
    }
};


