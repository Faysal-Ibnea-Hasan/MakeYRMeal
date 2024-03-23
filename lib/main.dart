import 'package:flutter/material.dart';
import 'package:make_ur_meal/data/dummy_data.dart';
import 'package:make_ur_meal/screens/categories.dart';
import 'package:make_ur_meal/screens/meals.dart';
import 'package:make_ur_meal/screens/tabs.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(
      255,
      131,
      57,
      0,
    ),
    brightness: Brightness.dark,
  ),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const TabsScreen(),
    );
  }
}
