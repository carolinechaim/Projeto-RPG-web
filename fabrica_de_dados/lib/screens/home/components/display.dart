import 'package:flutter/material.dart';
import './carrosel.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              height: 300,
              width: 270,
              color: Colors.purple[200],
              child: Column(
                children: [
                  Container(child: const Text('imagem 1')),
                  Container(child: const Text('item 1'))
                ],
              )),
          Container(
              height: 300,
              width: 270,
              color: Colors.purple[200],
              child: Column(
                children: [
                  Container(child: const Carrosel()),
                  Container(child: const Text('item 2'))
                ],
              )),
          Container(
              height: 300,
              width: 270,
              color: Colors.purple[200],
              child: Column(
                children: [
                  Container(child: const Text('item 3')),
                  Container(child: const Text('item 3'))
                ],
              )),
        ],
      ),
    );
  }
}
