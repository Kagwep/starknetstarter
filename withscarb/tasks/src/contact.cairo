
use debug::PrintTrait;


struct Contact {
    name: felt252,
    phone: felt252,
    email: felt252,
}
fn main() {
    let contact = Contact { name: 'John Doe', phone: '123-456-7890', email: 'john.doe@example.com',};
    contact.print();
}

impl printContact of PrintTrait<Contact> {
    fn print(self: Contact) {
        self.name.print();
        self.phone.print();
        self.email.print();
    }
}
