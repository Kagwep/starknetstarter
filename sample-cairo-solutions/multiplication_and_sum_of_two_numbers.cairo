use debug::PrintTrait;

fn main(){
    // declare and assign variables
    let a: u128 = 20;
    let b: u128 = 10;

    let sum = a+b;
    let multiplication = a*b;

    sum.print();
    multiplication.print();
}