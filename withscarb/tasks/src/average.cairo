use array::ArrayTrait;
use debug::PrintTrait;
use core::traits::AddEq;
use core::traits::Div;




// Specify generic type T between the angulars

fn average_numbers<T,impl TCopy: Copy<T>,impl TDiv: Div<T>, impl TAddEq: AddEq<T>, impl TDrop: Drop<T>>(l1: Array<T>) -> Array<T> {


    let mut l3 = ArrayTrait::<T>::new();

    let new_len_of_array = l1.len();

    let len_of_array = new_len_of_array - 1;

    let mut i: usize = 0;

    let mut sum = *l1.at(0);

    loop {
        if i > len_of_array {
            break;
        }
        let first = *l1.at(i);
        sum += first;
        i += 1;
    };


    l3


}

fn main() {
    let mut l1 = ArrayTrait::new();


    l1.append(1);

    let l3 = average_numbers(l1);




}