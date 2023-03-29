import 'package:charts/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'package:firebase_analytics/firebase_analytics.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flirty',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Color.fromRGBO(42, 117, 188, 1),
          backgroundColor: Color.fromRGBO(28, 27, 27, 1),
          
          useMaterial3: true,
        ),
        home: const LogInScreen());
  }
}
