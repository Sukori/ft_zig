const std = @import("std");

pub fn ft_putstrz(str: []const u8) !void {
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();
    var i: usize = 0;

    while (i < str.len) {
        try stdout.print("{c}", .{str[i]});
        i += 1;
    }
    try bw.flush();
}

pub fn main() !void {
    try ft_putstrz("Hello World!");
}
