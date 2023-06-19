import 'package:flutter/material.dart';
import 'package:text_field_and_gesture/home_page.dart';
import 'package:text_field_and_gesture/mytext_field_page.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MytextField(),
      routes: {
        MytextField.id: (context) => const MytextField(),
        HomePage.id: (context) => const HomePage(),
      },
    );
  }
}
