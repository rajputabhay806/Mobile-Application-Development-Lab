class Student {
  final String name, course;
  final int rollNumber;
  const Student({required this.name, required this.rollNumber, required this.course});
  Map<String, dynamic> toMap() => {'name': name, 'rollNumber': rollNumber, 'course': course};
  factory Student.fromMap(Map<String, dynamic> map) => Student(
    name: map['name'] as String, rollNumber: map['rollNumber'] as int, course: map['course'] as String);
}
void main() {
  const student = Student(name: 'Neha', rollNumber: 102, course: 'BCA');
  final map = student.toMap();
  final restored = Student.fromMap(map);
  print(map);
  print('${restored.name}, ${restored.rollNumber}, ${restored.course}');
}
