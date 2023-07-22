use debug::PrintTrait;
use array::ArrayTrait;
use option::OptionTrait;

fn sort(mut new_range: usize){
            loop{

            if new_range > 10 {
                break;
            }
            if new_range == 5 {
                new_range += 1;
                continue;
            }
            new_range.print();
            new_range += 1;

        }

}

fn main() {

    let mut arr = ArrayTrait::<u128>::new();
    arr.append(5);
    arr.append(8);
    arr.append(20);
    arr.append(13);
    arr.append(11);
    arr.append(21);

    let len_of_arr = arr.len();

    len_of_arr.print();

    let mut i: usize = len_of_arr;

    loop {

        let swapped: bool = false;

        let mut new_range: usize = len_of_arr - i - 1;

        if i > 10 {
            break;
        }
        if i == 5 {
            i += 1;
            continue;
        }
        i.print();
        i += 1;
    }
}