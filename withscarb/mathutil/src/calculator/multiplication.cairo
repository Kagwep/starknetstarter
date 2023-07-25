use array::ArrayTrait;

fn multiply(numbers: Array<u128>) -> u128{
    let len_of_array: usize = numbers.len();

    let len_of_array = len_of_array - 1;

    let mut i: usize = 0;

    let mut result: u128 = 0;

    loop {
        if i > len_of_array {
            break;
        }
        let first = *numbers.at(i);
        result *= first;
        i += 1;
    };

    result

}