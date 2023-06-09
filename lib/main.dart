import 'package:flutter/material.dart';
import 'package:kolayca_teslimat_flutter/pages/home_page.dart';
import 'package:kolayca_teslimat_flutter/pages/login_page.dart';
import 'package:kolayca_teslimat_flutter/pages/splash_page.dart';
import 'package:kolayca_teslimat_flutter/pages/waiting_packages_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: SplashPage(),
    );
  }
}
