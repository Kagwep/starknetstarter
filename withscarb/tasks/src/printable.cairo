use debug::PrintTrait;

#[derive(Copy, Drop)]
struct Contact {
    name: felt252,
    phone: felt252,
    email: felt252,
}

trait PrintableTrait{
    fn print(ref self: Contact) -> bool;
}

impl ContactImpli of PrintableTrait{

    fn print(ref self: Contact) -> bool{

        if self.name == 'John Doe' && self.phone =='123-456-7890' && self.email == 'john.doe@example.com'{

            self.name.print();
            self.phone.print();
            self.email.print();

            true
        }else{
            false
        }

    }

}


fn main(){
   let mut contact = Contact { name: 'John Doe', phone: '123-456-7890', email: 'john.doe@example.com',};
    contact.print();
}


#[cfg(test)]
mod tests{

    use  super::Contact;
    use  super:: PrintableTrait;

    #[test]
    fn test_print(){
        let mut contact = Contact { name: 'John Doe', phone: '123-456-7890', email: 'john.doe@example.com',};
        let check = PrintableTrait::print(ref self:contact);

        assert(check == true, 'passed');
    }


}