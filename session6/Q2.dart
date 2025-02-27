import 'dart:ffi';

void main(List<String> args) {
  print(temperatureConverter(temperatureDegree: 25, unit: 'C'));
  print(temperatureConverter(temperatureDegree: 77.5, unit: 'F'));
}

double temperatureConverter(
    {required double temperatureDegree, required String unit}) {
  if (unit == 'C' || unit == 'c') {
    return (temperatureDegree * 9 / 5) + 32;
  } else if (unit == 'F' || unit == 'f') {
    return (temperatureDegree - 32) * 5 / 9;
  } else {
    print('Invalid unit. Use "C" for Celsius or "F" for Fahrenheit.');
    return 0;
  }
}
