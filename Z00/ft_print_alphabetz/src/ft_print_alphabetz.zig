const std = @import("std");

pub fn ft_print_alphabetz() !void {
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();
    var alpha: u8 = 'a';

    while (alpha <= 'z') {
        try stdout.print("{c}", .{alpha});
        alpha += 1;
    }
    try bw.flush();
}

pub fn main() !void {
    try ft_print_alphabetz();
}
