const std = @import("std");

pub fn ft_is_negativez(num: i64) !void {
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    if (num < 0) {
        try stdout.print("N", .{});
    } else try stdout.print("P", .{});
    try bw.flush();
}

pub fn main() !void {
    try ft_is_negativez(-8);
}
