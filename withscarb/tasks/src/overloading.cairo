use debug::PrintTrait;


trait add {
    fn sum(self: TwoNumbers) -> u64;

}


struct TwoNumbers {
    a: u64,
    b: u64,
}


impl sumoftwonumbers of add {

    fn sum(self: TwoNumbers) -> u64 {
        self.a + self.b
    }
}



fn main() {
    let two_nums = TwoNumbers { a: 2, b: 4 };
  
    let sum_two = two_nums.sum();       

    sum_two.print();
}
