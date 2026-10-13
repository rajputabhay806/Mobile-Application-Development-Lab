import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
void main() => runApp(const NotesApp());
class NotesApp extends StatelessWidget {
 const NotesApp({super.key});
 @override Widget build(BuildContext context) => MaterialApp(debugShowCheckedModeBanner: false, home: const NotesPage());
}
class NotesPage extends StatefulWidget {
 const NotesPage({super.key});
 @override State<NotesPage> createState() => _NotesPageState();
}
class _NotesPageState extends State<NotesPage> {
 final c = TextEditingController();
 List<String> notes = [];
 @override void initState() { super.initState(); load(); }
 Future<File> get file async { final d = await getApplicationDocumentsDirectory(); return File('\${d.path}/notes.json'); }
 Future<void> load() async {
  final f = await file;
  if (await f.exists()) {
   try { final decoded = jsonDecode(await f.readAsString()) as List<dynamic>; setState(() => notes = decoded.cast<String>()); }
   catch (_) { setState(() => notes = []); }
  }
 }
 Future<void> save() async { final f = await file; await f.writeAsString(jsonEncode(notes)); }
 @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('JSON Notes')), body: Column(children: [
  Padding(padding: const EdgeInsets.all(12), child: TextField(controller: c, decoration: const InputDecoration(labelText: 'Note'))),
  ElevatedButton(onPressed: () async { if (c.text.trim().isEmpty) return; setState(() => notes.add(c.text.trim())); c.clear(); await save(); }, child: const Text('Add note')),
  Expanded(child: ListView.builder(itemCount: notes.length, itemBuilder: (_, i) => ListTile(title: Text(notes[i]), trailing: IconButton(icon: const Icon(Icons.delete), onPressed: () async { setState(() => notes.removeAt(i)); await save(); })))),
 ]));
}
