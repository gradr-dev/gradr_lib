import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gradr lib example'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Grade System Detector'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pushNamed('grade_system_detector');
            },
          ),
          ListTile(
            title: const Text('Grade System Converter'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pushNamed('grade_system_converter');
            },
          ),
        ],
      ),
    );
  }
}
