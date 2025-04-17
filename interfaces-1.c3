// # interfaces c3
//
// example of interfaces in c3.
//
//

import std::io;



fn void main()
{
    int i = 1;
    double d = 1.0;
    Bob bob;

    any a = &i;
    whoareyou((MyName)a);
    a = &d;
    whoareyou((MyName)a);
    a = &bob;
    whoareyou((MyName)a);
}


// Define a dynamic interface
interface MyName
{
    fn String myname();
}

struct Bob (MyName) { int x; }

// Required implementation as Bob implements MyName
fn String Bob.myname(Bob*) @dynamic { return "I am Bob!"; }

// Ad hoc implementation
fn String int.myname(int*) @dynamic { return "I am int!"; }

fn void whoareyou(MyName b)
{
    //MyName b = (MyName)a;
    if (!&b.myname)
    {
        io::printn("I don't know who I am.");
        return;
    }
    io::printn(b.myname());
}

