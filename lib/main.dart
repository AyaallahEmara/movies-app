import 'package:flutter/material.dart';
import 'package:movieapp/view/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFF1D1D28),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
