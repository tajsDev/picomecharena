pub const Health = struct {
    current: i32,
    max: i32,

    pub fn new(now: i32) Health {
        return Health{ .current = now, .max = now };
    }
};
