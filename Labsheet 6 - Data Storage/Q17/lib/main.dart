import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() => runApp(const LabApp());
class LabApp extends StatelessWidget {
 const LabApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, title: 'Student Profile CRUD', theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal), home: const HomePage());
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});
 @override State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 final name = TextEditingController(); final roll = TextEditingController(); final course = TextEditingController(); final semester = TextEditingController(); String profile = 'No profile saved';
 @override void initState() { super.initState(); load(); }

Future<void> load() async { final p = await SharedPreferences.getInstance(); setState(() { name.text = p.getString('p_name') ?? ''; roll.text = p.getString('p_roll') ?? ''; course.text = p.getString('p_course') ?? ''; semester.text = p.getString('p_semester') ?? ''; profile = name.text.isEmpty ? 'No profile saved' : 'Name: \${name.text}\\nRoll: \${roll.text}\\nCourse: \${course.text}\\nSemester: \${semester.text}'; }); }
Future<void> saveProfile() async { final p = await SharedPreferences.getInstance(); await p.setString('p_name', name.text); await p.setString('p_roll', roll.text); await p.setString('p_course', course.text); await p.setString('p_semester', semester.text); setState(() => profile = 'Name: \${name.text}\\nRoll: \${roll.text}\\nCourse: \${course.text}\\nSemester: \${semester.text}'); }
@override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Student Profile')), body: ListView(padding: const EdgeInsets.all(20), children: [TextField(controller: name, decoration: const InputDecoration(labelText: 'Name')), TextField(controller: roll, decoration: const InputDecoration(labelText: 'Roll number')), TextField(controller: course, decoration: const InputDecoration(labelText: 'Course')), TextField(controller: semester, decoration: const InputDecoration(labelText: 'Semester')), Wrap(spacing: 8, children: [ElevatedButton(onPressed: saveProfile, child: const Text('Save / Update')), OutlinedButton(onPressed: () async { final p = await SharedPreferences.getInstance(); for (final k in ['p_name','p_roll','p_course','p_semester']) { await p.remove(k); } setState(() { name.clear(); roll.clear(); course.clear(); semester.clear(); profile = 'Profile cleared'; }); }, child: const Text('Clear'))]), const SizedBox(height: 16), Text(profile)]));

}
