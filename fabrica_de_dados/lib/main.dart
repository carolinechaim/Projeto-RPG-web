import 'package:fabrica_de_dados/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'BarlowSemiCondensed',
      ),
      home: const Scaffold(
        drawer: Drawer(
          child: Text("teste"),
        ),
        backgroundColor: Color(0xFFC4C4C4),
        body: HomePage(),
      ),
    );
  }
}
