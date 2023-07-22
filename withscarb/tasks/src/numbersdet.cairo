use debug::PrintTrait;

fn main() {
    let number: u128 = 3;

    if number > 0 {
        'number is positive'.print();
    } else if number < 0 {
        'number is negative'.print();
    } else if number  == 0 {
        'number minus 2 is 1'.print();
    } else {
        'number type error'.print();
    }
}