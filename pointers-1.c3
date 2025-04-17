// # Pointers c3
//
// Using pointers.
//
//

import std::io;



fn void main()
{
    io::printn("C3 pointers example");

    Car car;
    car.color = "orange";
    car.num = 4;
    io::printn(car);

    // Can't re-type references
    // don't work
    //Airplane airplane = (Airplane)car;
    //io::printn(airplane);

    Car* pcar = &car;
    io::printn(*pcar);

    // Can re-type pointers
    // work
    Airplane* airplane = (Airplane*)pcar;
    io::printn(*airplane);
}


struct Car {
    int num;
    String color;
}

struct Airplane {
    int num;
    String color;
}


