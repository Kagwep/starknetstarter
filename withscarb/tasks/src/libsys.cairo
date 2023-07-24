use debug::PrintTrait;

#[derive(Copy, Drop)]
struct Book {
    title: felt252,
    author: felt252,
    isbn: felt252,
    is_available: bool,
}

trait BorrowTrait{
    fn borrowBook(ref self: Book) -> bool;
    fn returedBook(ref self: Book) -> bool;
}

impl BorrowImpl of BorrowTrait {
    fn borrowBook(ref self: Book) -> bool {

        if self.is_available{
            self.is_available = false;
            true
        } else {
            false
        }

    }

    fn returedBook(ref self: Book) -> bool{

        if self.is_available{
            false
        } else {
            self.is_available = true; 
            true
        }

    }
}


fn main() {


    let mut book1 = Book { title: 'The Catcher in the Rye', author: 'J.D. Salinger', isbn: '9780316769488', is_available: true,};

    let mut book2 = Book {title:'To Kill a Mockingbird', author: 'Harper Lee', isbn: '9780061120084',is_available : false,};

    let check  = book1.borrowBook();
    let check1  = book2.returedBook();

    if check {
        'borrowed'.print();
    }else{
        'book not available'.print();
    }

    if check1 {
        'book returned'.print();
    }else{
        'book was never borrowed'.print();
    }
    


}

impl bookPrintImpl  of PrintTrait<Book> {
    // Method to check if the temperature is cold (below 10 degrees Celsius)
    fn print(self: Book) {
        self.title.print();
    }
}

