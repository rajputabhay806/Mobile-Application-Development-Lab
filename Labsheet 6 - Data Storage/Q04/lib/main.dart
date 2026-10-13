import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() => runApp(const LabApp());
class LabApp extends StatelessWidget {
 const LabApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, title: 'Save Name', theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal), home: const HomePage());
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});
 @override State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 final c = TextEditingController(); String saved = '';
 @override void initState() { super.initState(); load(); }

Future<void> load() async { final p = await SharedPreferences.getInstance(); setState(() => saved = p.getString('name') ?? ''); }
@override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Save Name')), body: Padding(padding: const EdgeInsets.all(20), child: Column(children: [TextField(controller: c, decoration: const InputDecoration(labelText: 'Name')), ElevatedButton(onPressed: () async { final p = await SharedPreferences.getInstance(); await p.setString('name', c.text); setState(() => saved = c.text); }, child: const Text('Save')), Text('Saved name: $saved')])));

}
