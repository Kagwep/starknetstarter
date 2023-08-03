use core::traits::Destruct;
use debug::PrintTrait;
use array::ArrayTrait;

#[derive(Copy, Drop)]
struct Book {
    title: felt252,
    author: felt252,
    isbn: felt252,
    is_available: bool,
}
trait SortingTrait<T>{
    fn sort( books: Array<T>);
}

impl ContactImpli of SortingTrait<Book>{

    fn sort(books: Array<Book> ){
        let book1 = books.at(0);
        let book2 = books.at(1);

        let first_value = books.pop_front().unwrap();
        first_value.print(); 

    }

}


fn main(){

    let mut book1 = Book { title: 'The Catcher in the Rye', author: 'J.D. Salinger', isbn: '9780316769488', is_available: true,};

    let mut book2 = Book {title:'To Kill a Mockingbird', author: 'Harper Lee', isbn: '9780061120084',is_available : false,};

    let mut books = ArrayTrait::new();

    books.append(book1);
    books.append(book2);

 

}