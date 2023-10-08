import 'package:flutter/material.dart';

import 'homeScreen/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practice of Complete Ui Design App',
      initialRoute: '/HomeScreen',
      routes: {
        '/HomeScreen': (context) => h1(),
      },
    );
  }
}
