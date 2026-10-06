// LABSHEET-1 - Q7
// Question: Convert temperature from Celsius to Fahrenheit.

import 'dart:io';

void main() {
  stdout.write("Enter temperature in Celsius: ");
  double celsius = double.parse(stdin.readLineSync()!);

  double fahrenheit = (celsius * 9 / 5) + 32;

  print("Temperature in Fahrenheit = $fahrenheit");
}
