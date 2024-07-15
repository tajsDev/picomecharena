pub const Health = struct {
    current: i32,
    max: i32,

    pub fn new(max: i32) Health {
        return Health{ .current = max, .max = max };
    }
};
