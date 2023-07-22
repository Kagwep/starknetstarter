use debug::PrintTrait;
use array::ArrayTrait;
use option::OptionTrait;
use traits::TryInto;
use traits::Into;


fn pass_by_value(x: usize) {
    x.print();
}

fn pass_by_reference(mut arr: Array<u128>) -> Array<u128> {


    arr.append(10);
    arr.append(1);
    arr.append(2);

    let first_value = arr.pop_front().unwrap();

    let my: felt252 = first_value.into();

    'from here'.print();
    first_value.print(); 

    'see'.print();
    my.print();

    arr

}

fn main() {
    let value = 5;
    pass_by_value(x: value);
    value.print();

    let mut arr:Array<u128> = ArrayTrait::new();
    
    let mut newarr = pass_by_reference(arr);

    let first_value = newarr.pop_front().unwrap();

    'new'.print();
    first_value.print(); 



   
}