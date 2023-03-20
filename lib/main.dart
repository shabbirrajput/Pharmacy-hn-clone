import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/Splash/screen_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pharmacy hn clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScreenSplash()
    );
  }
}
