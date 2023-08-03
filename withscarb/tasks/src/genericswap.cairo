
use array::ArrayTrait;
use debug::PrintTrait;

// Specify generic type T between the angulars

fn rearange<T,impl TCopy: Copy<T>, impl TDrop: Drop<T>>(l1: Array<T>, l2: Array<T>) -> Array<T> {


    let  first = *l1.at(0);
    let second = *l2.at(0);

    let mut l3 = ArrayTrait::<T>::new();
    l3.append(second);
    l3.append(first);

    l3


}

fn main() {
    let mut l1 = ArrayTrait::new();
    let mut l2 = ArrayTrait::new();

    l1.append('a');


    l2.append(3);


    // There is no need to specify the concrete type of T because
    // it is inferred by the compiler
    let l3 = rearange(l1, l2);

    let first = *l3.at(0);
    let second = *l3.at(1);


    first.print();
    second.print();



}

#[cfg(test)]
mod tests{

    use array::ArrayTrait;
    use super::rearange;

    #[test]
    fn test_swap(){
        let mut l1 = ArrayTrait::new();
        let mut l2 = ArrayTrait::new();

        l1.append('a');


        l2.append(3);


        // There is no need to specify the concrete type of T because
        // it is inferred by the compiler
        let l3 = rearange(l1, l2);

        let first = *l3.at(0);
        let second = *l3.at(1);


        assert(first == 3, 'swapped');
        assert(second == 'a', 'swapped');

    }
}