/*4. Weather Report:
Use Map and List to create a program that stores weather data for different cities (temperature,
humidity, etc.). Write a function that can retrieve and print weather details using a city name. */
void main() {
  WeatherDetails(city: 'New York');
  WeatherDetails(city: 'Los Angeles');
}

List<Map<String, Map<String, dynamic>>> cityWeather = [
  {
    'New York': {
      'temperature': 25,
      'humidity': 3,
    },
    'Los Angeles': {
      'temperature': 20,
      'humidity': 5,
    },
    'Chicago': {
      'temperature': 30,
      'humidity': 10,
    }
  },
];
void WeatherDetails({required String city}) {
  for (var element in cityWeather) {
    if (element.containsKey(city)) {
      print('Weather details for $city:');
      print('Temperature: ${element['']}°C');
      print('Humidity: ${element['humidity']}%');
    } else {
      print('No weather data available for $city.');
    }
  }
}
    
