import 'package:flutter/material.dart';

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
              //color: Colors.purple[200],
              child: Column(
                children: [
                  Image.asset('./assets/images/dice1.jpeg'),
                  const SizedBox(height: 10),
                  Container(
                      height: 100,
                      //color: Colors.blue,
                      child: const Text('Daos de Resina')),
                ],
              )),
          Container(
              height: 300,
              width: 270,
              //color: Colors.purple[200],
              child: Column(
                children: [
                  Image.asset('./assets/images/dice4.jpg'),
                  const SizedBox(height: 10),
                  Container(
                      height: 100,
                      //color: Colors.blue,
                      child: const Text('Dados de Metal')),
                ],
              )),
          Container(
              height: 300,
              width: 270,
              //color: Colors.purple[200],
              child: Column(
                children: [
                  Image.asset('./assets/images/dice2.jpg'),
                  const SizedBox(height: 10),
                  Container(
                      height: 100,
                      //color: Colors.blue,
                      child: const Text('Dados Costumizados')),
                ],
              )),
        ],
      ),
    );
  }
}
