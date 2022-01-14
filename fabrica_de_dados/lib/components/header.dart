import 'package:fabrica_de_dados/components/dropdown.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  var color;

  get image => null;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: double.infinity,
        color: Colors.white,
        margin: const EdgeInsets.only(top: 5.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              }),
          Container(
              height: 45,
              width: 270,
              color: Colors.purple[200],
              child: const Align(
                  alignment: Alignment.center,
                  child: Text("30% off toda sexta feira",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromRGBO(0, 0, 0, 0.6))))),
          Container(
            //color: Colors.amber,
            child: const Text(
              "Fabrica de Dados",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color.fromRGBO(0, 0, 0, 0.6)),
            ),
          ),
          Container(
              //color: Colors.green,
              child: TextButton(
            child: const Text(
              "loja",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 0, 0, 0.6)),
            ),
            onPressed: () {
              print("loja");
            },
          )),
          Container(
              child: TextButton(
            child: const Text(
              "Sobre nós",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 0, 0, 0.6)),
            ),
            onPressed: () {
              print("Sobre nós");
            },
          )),
          Container(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      print("account");
                    },
                    icon: const Icon(Icons.account_circle,
                        color: Color.fromRGBO(0, 0, 0, 0.6), size: 28)),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {
                      print("message");
                    },
                    icon: const Icon(Icons.message,
                        color: Color.fromRGBO(0, 0, 0, 0.6), size: 28)),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                    onPressed: () {
                      print("cart");
                    },
                    icon: const Icon(Icons.shopping_cart_outlined,
                        color: Color.fromRGBO(0, 0, 0, 0.6), size: 28))
              ],
            ),
          ),
        ]));
  }
}
