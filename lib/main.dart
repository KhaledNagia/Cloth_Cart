import 'package:flutter/material.dart';
import 'package:cloth_cart/Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cloth Shop',
      theme: ThemeData(
        colorSchemeSeed: Colors.black,
        scaffoldBackgroundColor: Colors.blueAccent,
        appBarTheme: AppBarTheme(
          elevation: 0,
          foregroundColor: Colors.blue,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
