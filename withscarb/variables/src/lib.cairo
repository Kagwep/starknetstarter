use debug::PrintTrait;
use traits::Into;
fn main() {
    let mut x = 5;
    x.print();
    x = 6;
    x.print();

    let x = 5;
    let x = x + 1;
    {
        let x = x * 2;
        'Inner scope x value is:'.print();
        x.print()
    }
    'Outer scope x value is:'.print();
    x.print();

    let x = 2;
    x.print();
    let x: felt252 = x.into(); // converts x to a felt, type annotation is required.
    x.print()

}