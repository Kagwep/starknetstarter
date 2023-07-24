use debug::PrintTrait;

#[derive(Copy, Drop)]
struct WeatherData {
    temperature: u64,
    humidity: u64,
    wind_speed: u64,
    description: felt252,
}

trait TemperatureTrait{
    fn isCold(self: @WeatherData) -> bool;
}


impl TemperatureTraitImpl of TemperatureTrait{
    fn isCold(self: @WeatherData) -> bool{
        if *self.temperature < 10{
            true
        }else{
            false
        }
    }
}

fn main() {
    let weather = WeatherData { temperature: 5, humidity: 60, wind_speed: 15, description: 'Partly cloudy',};
  
    // weather.print();

    let check = weather.isCold();
   
    if check{
        'is cold'.print();
    }else{
        'not cold'.print();
    }


}


impl WeatherPrintImpl  of PrintTrait<WeatherData> {
    // Method to check if the temperature is cold (below 10 degrees Celsius)
    fn print(self: WeatherData) {
        self.temperature.print();
    }
}

