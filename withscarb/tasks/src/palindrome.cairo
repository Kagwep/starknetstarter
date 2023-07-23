use debug::PrintTrait;

fn palindrome_check(mut number: u128){

    let mut digit = 0;
    let mut new_number = 0;
    let mut count = 1;

    loop{

        if new_number == number{
            'number is a palindrome!'.print();
            break;
        }else if number > 0 {
            digit = number % 10;
            number = number -digit;
            number = number/10;
            digit = digit * count; 
            new_number = new_number + digit ;
            count = count * 10;
            continue;
        } else {
                      'number not a palindrome..'.print();
            break;
        }


   
    }

    //     let mut i: usize = 0;
    // loop {
    //     if i > 10 {
    //         break;
    //     }
    //     'again'.print();
    //     i += 1;
    // }





}

fn main(){
    let number = 121;
    palindrome_check(number);
    
}