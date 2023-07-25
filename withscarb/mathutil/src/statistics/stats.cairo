use array::ArrayTrait;
mod calculator;

use calculator::addition;

fn mean(items: Array<u128>) -> u128{

    let newlen = items.len();
    let sum = addition::add(items);

    sum/newlen

}

fn median(items: Array<u128>){
    
}

fn mode(items: Array<u128>){
    
}