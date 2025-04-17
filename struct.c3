// # Structs c3
//
// Using structs.
// Test inline feature.

import std::io;



fn void main()
{
    io::printn("Using structs");

    Outer outer;
    outer.inner_num = 1;

    io::printn(outer.inner_num);

    test(outer);
}

fn void test(Inner o) {
    io::printn(o.inner_num);

}


struct Outer {
    inline Inner inner;
    // inline Inner2 inner2; // inline doesn't work more than once @
    int num1;
    
}

struct Inner {
    int inner_num;
}


struct Inner2 {
    int inner2_num;
}