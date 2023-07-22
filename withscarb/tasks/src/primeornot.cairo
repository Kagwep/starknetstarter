use core::clone::Clone;
use core::traits::Into;
use core::traits::TryInto;
use debug::PrintTrait;



fn main(){

    let mut x: u128 = 6;

    
    if x < 2 {
        'not prime'.print();
    }
     else {

    let mut i: u128 = 2;

    let mut check: u128 = x % i;


    loop {


        if i > x {
            'prime'.print();
            break;
        } else{
            if check == 0{
                'not prime'.print();
                break;
            }
        }
        i += 1;
    
    }


    }
}