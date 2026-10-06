// LABSHEET-1 - Q24
// Question: Create a list of numbers and find the largest and smallest number from the list.

void main() {
  List<int> numbers = [45, 12, 78, 3, 56, 21];

  int largest = numbers[0];
  int smallest = numbers[0];

  for (int number in numbers) {
    if (number > largest) largest = number;
    if (number < smallest) smallest = number;
  }

  print("List: $numbers");
  print("Largest = $largest");
  print("Smallest = $smallest");
}
