
use debug::PrintTrait;
fn main() {
    let mut i: u128 = 1;
    let mut number: u128 = 0;
    let mut result: u128 = 1;
    let value: u128 = number +1;
    loop {
        if i > 10 {
            result.print();
            break;
        }
        result *= i;
        i += 1;
    }
    
}