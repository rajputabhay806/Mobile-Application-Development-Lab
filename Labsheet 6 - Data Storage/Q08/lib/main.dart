import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() => runApp(const LabApp());
class LabApp extends StatelessWidget {
 const LabApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, title: 'Save Multiple Values', theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal), home: const HomePage());
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});
 @override State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 final name = TextEditingController(); final email = TextEditingController(); final age = TextEditingController(); String result = '';
 @override void initState() { super.initState(); load(); }

Future<void> load() async { final p = await SharedPreferences.getInstance(); setState(() { name.text = p.getString('name') ?? ''; email.text = p.getString('email') ?? ''; age.text = (p.getInt('age') ?? '').toString(); }); }
@override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('User Details')), body: ListView(padding: const EdgeInsets.all(20), children: [TextField(controller: name, decoration: const InputDecoration(labelText: 'Name')), TextField(controller: email, decoration: const InputDecoration(labelText: 'Email')), TextField(controller: age, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Age')), ElevatedButton(onPressed: () async { final p = await SharedPreferences.getInstance(); await p.setString('name', name.text); await p.setString('email', email.text); await p.setInt('age', int.tryParse(age.text) ?? 0); setState(() => result = '${name.text} | ${email.text} | ${age.text}'); }, child: const Text('Save')), Text(result)]));

}
