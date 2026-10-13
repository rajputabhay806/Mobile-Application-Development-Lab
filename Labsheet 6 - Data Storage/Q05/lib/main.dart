import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() => runApp(const LabApp());
class LabApp extends StatelessWidget {
 const LabApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, title: 'Persistent Counter', theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal), home: const HomePage());
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});
 @override State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 int count = 0;
 @override void initState() { super.initState(); load(); }

Future<void> load() async { final p = await SharedPreferences.getInstance(); setState(() => count = p.getInt('count') ?? 0); }
@override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Persistent Counter')), body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text('$count', style: const TextStyle(fontSize: 40)), ElevatedButton(onPressed: () async { setState(() => count++); final p = await SharedPreferences.getInstance(); await p.setInt('count', count); }, child: const Text('Increment')])));

}
