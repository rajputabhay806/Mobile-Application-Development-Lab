import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() => runApp(const LabApp());
class LabApp extends StatelessWidget {
 const LabApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, title: 'Remember Me', theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal), home: const HomePage());
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});
 @override State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 final username = TextEditingController(); bool remember = false;
 @override void initState() { super.initState(); load(); }

Future<void> load() async { final p = await SharedPreferences.getInstance(); setState(() { remember = p.getBool('remember') ?? false; if (remember) username.text = p.getString('username') ?? ''; }); }
@override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Login')), body: Padding(padding: const EdgeInsets.all(20), child: Column(children: [TextField(controller: username, decoration: const InputDecoration(labelText: 'Username')), CheckboxListTile(title: const Text('Remember Me'), value: remember, onChanged: (v) => setState(() => remember = v ?? false)), ElevatedButton(onPressed: () async { final p = await SharedPreferences.getInstance(); await p.setBool('remember', remember); if (remember) { await p.setString('username', username.text); } else { await p.remove('username'); } }, child: const Text('Save preference'))])));

}
