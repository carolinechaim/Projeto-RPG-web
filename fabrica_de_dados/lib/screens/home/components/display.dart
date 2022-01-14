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
                  Container(
                      height: 100,
                      color: Colors.red,
                      child: const Text('imagem 1')),
                  Container(
                      height: 100,
                      color: Colors.blue,
                      child: const Text('item 1')),
                ],
              )),
          Container(
              height: 300,
              width: 270,
              color: Colors.purple[200],
              child: Column(
                children: [
                  Container(
                      height: 100,
                      color: Colors.red,
                      child: const Text('imagem 2')),
                  Container(
                      height: 100,
                      color: Colors.blue,
                      child: const Text('item 2')),
                ],
              )),
          Container(
              height: 300,
              width: 270,
              color: Colors.purple[200],
              child: Column(
                children: [
                  Container(
                      height: 100,
                      color: Colors.red,
                      child: const Text('imagem 3')),
                  Container(
                      height: 100,
                      color: Colors.blue,
                      child: const Text('item 3')),
                ],
              )),
        ],
      ),
    );
  }
}
