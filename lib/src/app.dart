import 'package:flutter/material.dart';
import 'package:flutter_demos/screens/face_ar.dart';
import 'package:flutter_demos/screens/home.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demos',
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        FaceAr.id: (context) => FaceAr(),
      },
    );
  }
}
