import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() => runApp(const LabApp());
class LabApp extends StatelessWidget {
 const LabApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, title: 'Persistent To-Do List', theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal), home: const HomePage());
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});
 @override State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 final c = TextEditingController(); List<String> tasks = [];
 @override void initState() { super.initState(); load(); }

Future<void> load() async { final p = await SharedPreferences.getInstance(); setState(() => tasks = p.getStringList('tasks') ?? []); }
Future<void> save() async { final p = await SharedPreferences.getInstance(); await p.setStringList('tasks', tasks); }
@override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('To-Do List')), body: Column(children: [TextField(controller: c, decoration: const InputDecoration(labelText: 'Task')), ElevatedButton(onPressed: () async { if (c.text.trim().isEmpty) return; setState(() => tasks.add(c.text.trim())); c.clear(); await save(); }, child: const Text('Add task')), Expanded(child: ListView.builder(itemCount: tasks.length, itemBuilder: (_, i) => ListTile(title: Text(tasks[i]), trailing: IconButton(icon: const Icon(Icons.delete), onPressed: () async { setState(() => tasks.removeAt(i)); await save(); }))))]));

}
