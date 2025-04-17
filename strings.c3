// # Strings c3
//
// Using strings.
//

import std::io;

fn void main()
{
    // Using strings
    String part1 = "Hello, ";
    String part2 = "C3 Strings";

    // concatenate the strings
    String combined = part1.tconcat(part2);

    io::printn(combined); // Output: Hello, C3 World!

    // dynamic sttrings
    DString str1 = dstring::new(allocator::heap(), "dstring");
    DString str2 = dstring::new(allocator::temp(), " added text");

    str1.append(str2);

    io::printn(str1);
}

