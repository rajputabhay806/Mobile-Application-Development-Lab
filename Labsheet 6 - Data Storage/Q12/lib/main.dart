import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
void main() => runApp(const LabApp());
class LabApp extends StatelessWidget {
 const LabApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, title: 'Write Text to File', theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.teal), home: const HomePage());
}
class HomePage extends StatefulWidget {
 const HomePage({super.key});
 @override State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
 final c = TextEditingController(); String status = '';
 @override void initState() { super.initState();  }

Future<File> get localFile async { final dir = await getApplicationDocumentsDirectory(); return File('\${dir.path}/lab_text.txt'); }
@override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Write Text to File')), body: Padding(padding: const EdgeInsets.all(20), child: Column(children: [TextField(controller: c, maxLines: 4, decoration: const InputDecoration(labelText: 'Text')), ElevatedButton(onPressed: () async { final f = await localFile; await f.writeAsString(c.text); setState(() => status = 'Saved successfully'); }, child: const Text('Save to file')), Text(status)])));

}
