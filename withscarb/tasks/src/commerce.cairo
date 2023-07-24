use debug::PrintTrait;

#[derive(Copy, Drop)]
struct Product {
    name: felt252,
    price: u32,
    stock_quantity: u32,
    seller: felt252,
}


trait PurchaseTrait{
    fn purchase(ref self: Product, quantity: u32) -> bool;
}

impl PurchaseTraitImpl of PurchaseTrait {

    fn purchase(ref self: Product, quantity: u32) -> bool {
        if self.stock_quantity >= quantity {
            let total_price = self.price * quantity;
            self.stock_quantity -= quantity;
            true
        } else {
            false
        }
    }
}

fn main() {
    let mut product = Product{name: 'Laptop', price: 999,stock_quantity: 5,seller: 'Electronics World'};
    let quantity = 7;

    let check = product.purchase(quantity);

    if check{
        'sold'.print();
    } else{
        'failed'.print();
    }


}
