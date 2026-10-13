import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Shopping application',
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
  int selectedIndex = 0;
  @override
  void initState() { super.initState();  }
  @override
  Widget build(BuildContext context) {

return Scaffold(
 appBar: AppBar(title: const Text('Shopping application')),
 body: Center(child: Text('Shopping application: $selectedIndex', style: const TextStyle(fontSize: 24))),
 bottomNavigationBar: BottomNavigationBar(
  currentIndex: selectedIndex,
  type: BottomNavigationBarType.fixed,
  onTap: (i) => setState(() => selectedIndex = i),
  items: [BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Products'),
BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Cart'),
BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Profile')],
 ),
);

  }
}
