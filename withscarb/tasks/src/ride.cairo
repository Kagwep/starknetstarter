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
    fn endRide(self: @Ride, end_time: u256, distance: u256) -> u256 {

        let ride_duration_minutes = (end_time - self.start_time) / 60;

        let fare_duration = RATE_PER_MINUTE *( (end_time - self.start_time) / 60 ) + (RATE_PER_KILOMETER  * distance);

        let fare_distance = (RATE_PER_KILOMETER  * distance) ;

        self.fare + fare_duration + fare_distance
    }
}

fn main() {
    let ride = Ride::new("DriverAddress123", "Passenger123", "StartLocationA", "EndLocationB", 1631000000, 100);

    // Simulate the end of the ride (end_time in seconds since epoch and distance in kilometers)
    let end_time = 1631000600;
    let distance = 5;
    let rate_per_min = 1;
    let rate_per_dis = 2;

    let final_fare = ride.endRide(end_time, distance,rate_per_min,rate_per_dis);
  
}
