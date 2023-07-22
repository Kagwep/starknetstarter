use debug::PrintTrait;


fn area_of_triangle(length: u128,width: u128) -> u128{
    let area = length * width;
    area
}


fn main(){

    let length= 120;
    let width = 60;

    let result = area_of_triangle(length,width);

    result.print();

}