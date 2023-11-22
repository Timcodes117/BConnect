import 'package:bconnect/screens/App.dart';
import 'package:bconnect/screens/Discover.dart';
import 'package:bconnect/screens/Home.dart';
import 'package:bconnect/screens/Page.dart';
import 'package:bconnect/screens/Preview.dart';
import 'package:flutter/material.dart';
import 'package:bconnect/appearance/Darkmode.dart';
import 'package:bconnect/appearance/Lightmode.dart';
import 'package:bconnect/screens/Login.dart';
import 'package:bconnect/screens/Signup.dart';
import 'package:bconnect/screens/Welcome.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

void main() async {
//   await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );
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
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "/" : (context)=> Welcome(),
        "/login" : (context)=> Login(),
        "/signup" : (context)=> Signup(),
        "/main" : (context)=> App(),
        "/home" : (context)=> Home(),
        "/discover" : (context)=> Discover(),
        "/preview" : (context)=> Preview(),
        "/page" : (context)=> BusinessPage(),
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
