void main() {
  final student = <String, dynamic>{'name': 'Amit Sharma', 'rollNumber': 101, 'course': 'BCA'};
  student.forEach((key, value) => print('$key: $value'));
}
