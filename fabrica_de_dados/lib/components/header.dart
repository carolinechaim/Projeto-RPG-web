import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 5.0),
      child: const Align(
          alignment: Alignment.center,
          child: Text(
            "Fabrica de dados",
          )),
    );
  }
}
