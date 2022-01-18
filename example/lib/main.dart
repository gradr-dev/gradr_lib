import 'package:example/routes/grade_system_converter.dart';
import 'package:example/routes/grade_system_detector.dart';
import 'package:example/routes/home.screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var darkTheme = ThemeData.dark();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme.copyWith(
        appBarTheme: darkTheme.appBarTheme.copyWith(elevation: 0),
        primaryColor: Colors.amber,
        colorScheme: darkTheme.colorScheme.copyWith(
          primary: Colors.amber,
        ),
      ),
      routes: {
        'home': (ctx) => const HomeScreen(),
        'grade_system_detector': (ctx) => const GradeSystemDetectorScreen(),
        'grade_system_converter': (ctx) => const GradeSystemConverterScreen(),
      },
      initialRoute: 'home',
    );
  }
}
