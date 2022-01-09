import 'package:fabrica_de_dados/components/dropdown.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(width: 65, child: const DropDown()),
          Container(
              height: 45,
              width: 270,
              color: Colors.purple[200],
              child: const Align(
                  alignment: Alignment.center,
                  child: Text("30% off toda sexta feira",
                      style: TextStyle(fontSize: 20)))),
          Container(
            //color: Colors.amber,
            child: const Text(
              "Fabrica de Dados",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Container(
            //color: Colors.green,
            child: const Text("loja"),
          ),
          Container(
            //color: Colors.blue,
            child: const Text("sobre nos"),
          ),
          Container(
          width: 73,
          height: 76,
          decoration: new BoxDecoration(
          image: new DecorationImage(
          image: ExactAssetImage('assets/images/cart.png'),
          fit: BoxFit.fitHeight,
          ),
          ),
          ),
          Container(
          width: 67,
          height: 70,
          decoration: new BoxDecoration(
          image: new DecorationImage(
          image: ExactAssetImage('assets/images/user.png'),
          fit: BoxFit.fitHeight,
          ),
          ),
          ),Container(
          width: 66,
          height: 56,
          decoration: new BoxDecoration(
          image: new DecorationImage(
          image: ExactAssetImage('assets/images/watsapp.png'),
          fit: BoxFit.fitHeight,
          ),
          ),
          ),
          ],
          )
          );
  }
}
