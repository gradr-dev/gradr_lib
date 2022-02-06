import 'package:flutter/material.dart';

class GradeSystemConverterScreen extends StatefulWidget {
  const GradeSystemConverterScreen({Key? key}) : super(key: key);

  @override
  _GradeSystemConverterScreenState createState() => _GradeSystemConverterScreenState();
}

class _GradeSystemConverterScreenState extends State<GradeSystemConverterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grade System Converter'),
      ),
      body: ListView(
        children: const [],
      ),
    );
  }
}
