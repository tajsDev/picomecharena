pub const Position = struct {
    x: f32,
    y: f32,

    pub fn new(x: f32, y: f32) Position {
        return Position{ .x = x, .y = y };
    }
};

