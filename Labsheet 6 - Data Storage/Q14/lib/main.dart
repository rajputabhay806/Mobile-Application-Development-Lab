import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() => runApp(const LabApp());
class LabApp extends StatelessWidget {
 const LabApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, title: 'Student JSON Preferences', theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal), home: const HomePage());
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});
 @override State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 final name = TextEditingController(text: 'Amit'); final roll = TextEditingController(text: '101'); String saved = '';
 @override void initState() { super.initState(); load(); }

Future<void> load() async { final p = await SharedPreferences.getInstance(); setState(() => saved = p.getString('student') ?? 'No saved student'); }
@override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Student JSON')), body: Padding(padding: const EdgeInsets.all(20), child: Column(children: [TextField(controller: name, decoration: const InputDecoration(labelText: 'Name')), TextField(controller: roll, decoration: const InputDecoration(labelText: 'Roll number')), ElevatedButton(onPressed: () async { final p = await SharedPreferences.getInstance(); final json = '{"name": "${name.text}", "roll": "${roll.text}"}'; await p.setString('student', json); setState(() => saved = json); }, child: const Text('Save JSON')), Text(saved)])));

}
