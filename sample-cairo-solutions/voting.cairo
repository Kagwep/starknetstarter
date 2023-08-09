use debug::PrintTrait;


#[derive(Copy, Drop)]
struct Candidate {
    name: felt252,
    party: felt252,
    votes: u28,
    position: felt252,
}

fn winner_det(name: felt252,votes: u128, total_voters:u128) -> felt252{

    let remainder = votes % total_voters;

    let votes_minus_remainder  = votes - remainder;

    let vote_percentage = (votes / 100) * 100;

    if vote_percentage > 50{
        return name
    } else{
        return 
    }

    

}
