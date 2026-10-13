import 'dart:convert';
void main() {
  final student = <String, dynamic>{'name': 'Rahul', 'rollNumber': 103, 'course': 'BCA'};
  final jsonString = jsonEncode(student);
  print('JSON: $jsonString');
  print('Map: ${jsonDecode(jsonString)}');
}
