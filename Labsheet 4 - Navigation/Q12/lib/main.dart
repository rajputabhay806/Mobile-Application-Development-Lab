import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Drawer screen navigation',
    theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
    home: const HomePage(),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selected = 'Home';
  @override
  void initState() { super.initState();  }
  @override
  Widget build(BuildContext context) {

return Scaffold(
 appBar: AppBar(title: const Text('Drawer screen navigation')),
 drawer: Drawer(child: ListView(children: [
  const DrawerHeader(child: Text('Menu', style: TextStyle(fontSize: 24))),
  ListTile(leading: const Icon(Icons.home), title: const Text('Home'), onTap: () { Navigator.pop(context); setState(() => selected = 'Home'); }),
ListTile(leading: const Icon(Icons.person), title: const Text('Courses'), onTap: () { Navigator.pop(context); setState(() => selected = 'Courses'); }),
ListTile(leading: const Icon(Icons.info), title: const Text('Contact'), onTap: () { Navigator.pop(context); setState(() => selected = 'Contact'); })
 ])),
 body: Center(child: Text(selected, style: const TextStyle(fontSize: 28))),
);

  }
}
