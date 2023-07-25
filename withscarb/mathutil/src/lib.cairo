use array::ArrayTrait;
use debug::PrintTrait;

mod calculator;
mod geometry;

use calculator::addition;
use geometry::rectangle;


fn main () {

    let mut numbers = ArrayTrait::<u128>::new();
    numbers.append(100);
    numbers.append(100);

    let result_of_add = addition::add(numbers);

    result_of_add.print();

    let width = 10;
    let height = 25;

    let result_area = rectangle::area_rectangle(width,height);
    let result_perimeter = rectangle::perimeter_rectangle(width,height);

    result_area.print();
    result_perimeter.print();
    
    }