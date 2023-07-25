use core::debug::PrintTrait;
use array::ArrayTrait;
use box::BoxTrait;


fn add(numbers: Array<u128>) -> u128{
    let len_of_array: usize = numbers.len();

    let len_of_array = len_of_array - 1;

    let mut i: usize = 0;

    let mut sum: u128 = 0;

    loop {
        if i > len_of_array {
            break;
        }
        let first = *numbers.at(i);
        sum += first;
        i += 1;
    };

    sum

}