use array::ArrayTrait;

fn subtract(numbers: Array<u128>) -> u128{
    let len_of_array: usize = numbers.len();

    let len_of_array = len_of_array - 1;

    let mut i: usize = 0;

    let mut subtraction: u128 = 0;

    loop {
        if i > len_of_array {
            break;
        }
        let first = *numbers.at(i);
        subtraction -= first;
        i += 1;
    };

    subtraction

}