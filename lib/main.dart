import 'package:flutter/material.dart';
// import 'package:makassar_coding_3_12/detail_page.dart';
// import 'package:makassar_coding_3_12/home_page.dart';
// import 'package:makassar_coding_3_12/login_page.dart';
import 'package:makassar_coding_3_12/main_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // routes: {
      //   '/home': (context) => HomePage(),
      //   '/detail': (context) => DetailPage(),
      // },
      // initialRoute: '/home',
      home: MainPage()
    );
  }
}
