import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Student Record List App',
    theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
    home: const HomePage(),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String search = ''; final nameC = TextEditingController(); final rollC = TextEditingController(); final courseC = TextEditingController(); final List<Student> students = [Student('Amit','101','BCA'), Student('Neha','102','MCA')];
  @override
  void initState() { super.initState();  }
  @override
  Widget build(BuildContext context) {
    final shown = students.where((s) => s.name.toLowerCase().contains(search.toLowerCase())).toList(); return Scaffold(appBar: AppBar(title: const Text('Student Records')), body: Column(children: [Padding(padding: const EdgeInsets.all(10), child: Column(children: [TextField(controller: nameC, decoration: const InputDecoration(labelText: 'Name')), TextField(controller: rollC, decoration: const InputDecoration(labelText: 'Roll number')), TextField(controller: courseC, decoration: const InputDecoration(labelText: 'Course')), ElevatedButton(onPressed: () { if (nameC.text.trim().isEmpty) return; setState(() => students.add(Student(nameC.text.trim(), rollC.text.trim(), courseC.text.trim()))); nameC.clear(); rollC.clear(); courseC.clear(); }, child: const Text('Add student')), TextField(decoration: const InputDecoration(labelText: 'Search by name'), onChanged: (v) => setState(() => search = v))])), Expanded(child: ListView.builder(itemCount: shown.length, itemBuilder: (_, i) { final s = shown[i]; return ListTile(title: Text(s.name), subtitle: Text('Roll: ${s.roll} | Course: ${s.course}'), trailing: IconButton(icon: const Icon(Icons.delete), onPressed: () => setState(() => students.remove(s)))); }))]));
  }
}

class Student { final String name, roll, course; Student(this.name, this.roll, this.course); }
