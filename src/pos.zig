pub const Position = struct {
    x: i32,
    y: i32,

    pub fn new(x: i32, y: i32) Position {
        return Position{ .x = x, .y = y };
    }
};

