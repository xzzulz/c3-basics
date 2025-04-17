// # Hello program c3
//
// 
//

import std::io;

fn void main()
{
    String part1 = "Hello, ";
    String part2 = "C3 World!";

    // concatenate the strings
    String combined = part1.tconcat(part2);

    io::printn(combined); // Output: Hello, C3 World!
}

