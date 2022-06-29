import 'package:flutter/material.dart';
import 'package:flutter_gym_app/view/dashboard_page.dart';
import 'package:flutter_gym_app/view/homepage.dart';
import 'package:flutter_gym_app/view/signup_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardPage(),
    );
  }
}
