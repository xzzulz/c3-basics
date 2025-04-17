import std::io;

// # Component types C3
//
// Exploring how to build a component based type system.
//
// That has polymorphic capability.
//
// 
//

import std::io;



fn void main()
{
    io::printn("Poly-type sample");


    // create a car
    // ...
    Car car;

    // Pass it to general function.
    // A function that access any type, with "Vehicle" component.
    // The Car can be used as a vehicle.
    // This is some form of "polymorphism".
    print_vehicle_state(car._vehicle);


    Vehicle vehicle = car._vehicle;


    // In real use case, we don't know what the main type is.
    // We get a specific component.
    // And there must be some way to get other components from it.
    // Without knowing the actual map container type.
    // TODO define how to get the other components, from a specific component.


    // Now we have a vehicle, we want to be able to access
    // the mechanics component from it
    // This is some form of "polymorphism".
    // What's the best way to do this ?
    // ...    
    Mechanics mechs = get_mechanics(vehicle);
    mechs.use();



}


// prints the state of a Vehicle
fn void print_vehicle_state(Vehicle vh) {
    io::printfn("Vehicle state:\n%s", vh.state);
}

// get the mechanics component, from the vehicle component
fn Mechanics get_mechanics(Vehicle vh) {
    
    // get the main object first
    any main_object = vh._ob;

    // 
    //Mechanics mechs = $eval("main_object._mechanics");  // do not works
    io::printfn("Mechanics comp:");
    io::printn(mechs);

    return mechs;
}


/////////////////////////////////////////
// Car type

// 
struct Car
{
    Object _obc;
    Vehicle _vehicle;
    Identity _identity;
    Position _position;
    Mechanics _mechanics;
    int tyres;
}

// constructor
fn void car_new() {
    // ...
}


/////////////////////////////////////////
// Airplane type


struct Airplane
{
    Vehicle vehicle;
    int wings;
}

// constructor
fn void airplane_new() {

}


/////////////////////////////////////////
// Components


struct Object {
    any _ob;
    
}

struct Vehicle
{
    any _ob;
    String state; // good, medium, bad...
}

struct Identity
{
    any _ob;
    int id;
    String name;
}

struct Position
{
    any _ob;
    int x;
    int y;
}



//////////////////////////
// Mechanics component

enum Status : int {
    NEED_MAINTENANCE,
    MEDIUM,
    FINE
}

struct Mechanics {
    Status status;
}

fn void Mechanics.use(Mechanics* self) {
    if (self.status == Status.NEED_MAINTENANCE) {
        io::printn("Needs maintenance");
    } else {
        self.status--;
    }
}

fn void Mechanics.do_maintenance(Mechanics* self) {
    self.status = Status.FINE;
}