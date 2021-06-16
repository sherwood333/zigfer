const std = @import("std");
const Client = @import("requestz").Client;

pub fn main() anyerror!void {
    std.log.info("All your codebase are belong to us.", .{});

    //make request
    var client = try Client.init(std.testing.allocator);
    defer client.deinit();

    var response = try client.get("http://transfer.sh", .{});
    defer response.deinit();

    //hardcode file


}
