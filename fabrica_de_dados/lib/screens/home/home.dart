import 'package:fabrica_de_dados/components/header.dart';
import 'package:fabrica_de_dados/screens/home/components/carrosel.dart';
import 'package:flutter/material.dart';
import 'components/carrosel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [Header(), SizedBox(height: 10), Carrosel()],
    );
  }
}
