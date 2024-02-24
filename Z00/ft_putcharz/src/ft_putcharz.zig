const std = @import("std");

pub fn ft_putcharz(c: u8) !void {
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    try stdout.print("{c}", .{c});
    try bw.flush();
}

pub fn main() !void {
    try ft_putcharz('c');
}
