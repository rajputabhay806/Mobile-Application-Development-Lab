import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
void main() => runApp(const LabApp());
class LabApp extends StatelessWidget {
 const LabApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, title: 'Read Text from File', theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal), home: const HomePage());
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});
 @override State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 String contents = 'No saved file yet';
 @override void initState() { super.initState();  }

Future<File> get localFile async { final dir = await getApplicationDocumentsDirectory(); return File('\${dir.path}/lab_text.txt'); }
Future<void> readText() async { final f = await localFile; if (await f.exists()) { final text = await f.readAsString(); setState(() => contents = text); } else { setState(() => contents = 'File not found. Run Q12 first to create it.'); } }
@override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Read Text from File')), body: Padding(padding: const EdgeInsets.all(20), child: Column(children: [ElevatedButton(onPressed: readText, child: const Text('Read file')), Text(contents)])));

}
