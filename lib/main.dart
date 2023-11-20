import 'package:flutter/material.dart';
import 'package:hack101/appearance/Darkmode.dart';
import 'package:hack101/appearance/Lightmode.dart';
import 'package:hack101/screens/Login.dart';
import 'package:hack101/screens/Signup.dart';
import 'package:hack101/screens/Welcome.dart';

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
      debugShowCheckedModeBanner: false,
      // theme: lightMode,
      // darkTheme: darkMode,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "/welcome" : (context)=> Welcome(),
        "/login" : (context)=> Login(),
        "/signup" : (context)=> Signup(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Welcome()
    );
  }
}
