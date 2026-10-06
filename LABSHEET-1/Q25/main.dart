// LABSHEET-1 - Q25
// Question: Develop a Student Result Program that stores the student's name and marks in three subjects, calculates total marks and percentage, and displays the result as Pass or Fail.

import 'dart:io';

void main() {
  stdout.write("Enter student name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter marks in Subject 1: ");
  double mark1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter marks in Subject 2: ");
  double mark2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter marks in Subject 3: ");
  double mark3 = double.parse(stdin.readLineSync()!);

  double total = mark1 + mark2 + mark3;
  double percentage = total / 3;

  String result = percentage >= 40 ? "Pass" : "Fail";

  print("\nStudent Name: $name");
  print("Total Marks: $total");
  print("Percentage: $percentage%");
  print("Result: $result");
}
