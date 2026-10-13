import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() => runApp(const LabApp());
class LabApp extends StatelessWidget {
 const LabApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, title: 'Dark Mode Setting', theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal), home: const HomePage());
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});
 @override State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 bool dark = false;
 @override void initState() { super.initState(); load(); }

Future<void> load() async { final p = await SharedPreferences.getInstance(); setState(() => dark = p.getBool('dark') ?? false); }
@override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Dark Mode Setting')), body: SwitchListTile(title: const Text('Dark Mode ON/OFF'), value: dark, onChanged: (v) async { final p = await SharedPreferences.getInstance(); await p.setBool('dark', v); setState(() => dark = v); }));

}
