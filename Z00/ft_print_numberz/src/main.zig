const std = @import("std");

pub fn ft_print_numberz() !void {
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();
    var num: u8 = '0';

    while (num <= '9') {
        try stdout.print("{c}", .{num});
        num += 1;
    }
    try bw.flush();
}

pub fn main() !void {
    try ft_print_numberz();
}
