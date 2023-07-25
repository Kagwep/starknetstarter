use debug::PrintTrait;

#[derive(Copy, Drop)]

struct Ride {
    driver: felt252,        // Address of the driver (mocked as a string for simplicity)
    passenger: felt252,     // Name of the passenger (mocked as a string for simplicity)
    start_location: felt252,
    end_location: felt252,
    start_time: u256,       // Start time in seconds since epoch (mocked as a u64 for simplicity)
    fare: u256,             // Fare in a hypothetical token (mocked as a u64 for simplicity)
}

trait RideTrait{
    fn endRide(self: @Ride,end_time: u256, distance: u256,rate_per_min: u256,rate_per_dis: u256) -> u256;
}

impl RideTraitImpl of RideTrait {
    // Method to calculate the final fare based on ride duration and distance
    fn endRide(self: @Ride, end_time: u256, distance: u256,rate_per_min: u256,rate_per_dis: u256) -> u256 {

        let ride_duration_minutes = (end_time - *self.start_time) / 60;

        let fare_duration = rate_per_min *( (end_time - *self.start_time) / 60 ) + (rate_per_dis  * distance);

        let fare_distance = (rate_per_dis  * distance) ;

        *self.fare + fare_duration + fare_distance
    }
}

fn main() {
    let ride = Ride {driver: 'DriverAddress123', passenger: 'Passenger123',start_location:  'StartLocationA', end_location: 'EndLocationB', start_time: 1631000000,fare: 100};

    // Simulate the end of the ride (end_time in seconds since epoch and distance in kilometers)
    let end_time = 163000600;
    let distance = 5;
    let rate_per_min = 1;
    let rate_per_dis = 2;

    let final_fare = ride.endRide(end_time, distance,rate_per_min,rate_per_dis);

    'total cost'.print();

    final_fare.print();
  
}
