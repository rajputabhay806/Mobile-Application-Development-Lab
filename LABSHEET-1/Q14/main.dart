// LABSHEET-1 - Q14
// Question: Calculate grades based on the percentage obtained by a student.

import 'dart:io';

void main() {
  stdout.write("Enter percentage: ");
  double percentage = double.parse(stdin.readLineSync()!);

  String grade;

  if (percentage >= 90) {
    grade = "A+";
  } else if (percentage >= 80) {
    grade = "A";
  } else if (percentage >= 70) {
    grade = "B";
  } else if (percentage >= 60) {
    grade = "C";
  } else if (percentage >= 50) {
    grade = "D";
  } else {
    grade = "F";
  }

  print("Grade = $grade");
}
