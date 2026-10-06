// LABSHEET-1 - Q22
// Question: Write a function to check whether a given number is prime or not.

import 'dart:io';

bool isPrime(int number) {
  if (number < 2) return false;

  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) return false;
  }

  return true;
}

void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  print(isPrime(number)
      ? "$number is prime"
      : "$number is not prime");
}
