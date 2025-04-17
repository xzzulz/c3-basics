// # Data structures c3
//
// Using Maps.
//

import std::io;
import std::collections::map;



alias StrMap = HashMap { String, String };


fn void main()
{
    io::printn("Data structures");
    
    io::printn("# Map");
 

    StrMap map;
    map.init(mem);
    io::printfn("Map size: %d", map.count);
    
    map["1"] = "one";

    io::printfn("map[1] = %s", map["1"]!!);

    // It works !
}

