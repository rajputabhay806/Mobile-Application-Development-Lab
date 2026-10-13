import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() => runApp(const LabApp());
class LabApp extends StatelessWidget {
 const LabApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, title: 'Favourite Subjects', theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal), home: const HomePage());
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});
 @override State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 final c = TextEditingController(); List<String> subjects = [];
 @override void initState() { super.initState(); load(); }

Future<void> load() async { final p = await SharedPreferences.getInstance(); setState(() => subjects = p.getStringList('subjects') ?? []); }
Future<void> save() async { final p = await SharedPreferences.getInstance(); await p.setStringList('subjects', subjects); }
@override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Favourite Subjects')), body: Column(children: [TextField(controller: c, decoration: const InputDecoration(labelText: 'Subject')), ElevatedButton(onPressed: () async { if (c.text.trim().isEmpty) return; setState(() => subjects.add(c.text.trim())); c.clear(); await save(); }, child: const Text('Add')), Expanded(child: ListView(children: subjects.map((s) => ListTile(title: Text(s))).toList()))]));

}
