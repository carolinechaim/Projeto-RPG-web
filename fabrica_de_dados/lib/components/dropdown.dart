import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  const DropDown({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      icon: const Image(image: AssetImage('../assets/images/menu.png')),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {},
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
