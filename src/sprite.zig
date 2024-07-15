const rl = @import("raylib");

pub const Sprite = struct {
    texture: rl.Texture2D,
    width: i32,
    height: i32,

    pub fn new(texturePath: []const u8) Sprite {
        Image startImage = rl.LoadImage(texturePath);
        Texture2D startText = rl.LoadTextureFromImage(startImage);
        rl.UnloadImage(startImage);
        return Sprite{
            .texture = rl.LoadTexture(startTexture),
            .width = 32, // Example width
            .height = 32, // Example height
        };
    }
};

