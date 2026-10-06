// LABSHEET-1 - Q13
// Question: Check whether a given year is a leap year.

import 'dart:io';

void main() {
  stdout.write("Enter year: ");
  int year = int.parse(stdin.readLineSync()!);

  bool leap = (year % 400 == 0) ||
      (year % 4 == 0 && year % 100 != 0);

  print(leap ? "$year is a leap year" : "$year is not a leap year");
}
