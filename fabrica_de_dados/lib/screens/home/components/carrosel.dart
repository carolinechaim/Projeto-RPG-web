import 'dart:html';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carrosel extends StatefulWidget {
  const Carrosel({Key? key}) : super(key: key);

  @override
  _CarroselState createState() => _CarroselState();
}

class _CarroselState extends State<Carrosel> {
  int _current = 0;
  CarouselController buttonCarouselController = CarouselController();

  final List<String> images = [
    "../../assets/images/dice1.jpeg",
    "../../assets/images/dice2.jpg",
    "../../assets/images/dice3.jpg",
    "../../assets/images/dice4.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CarouselSlider(
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          height: 500,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 7),
          enlargeCenterPage: true,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
        ),
        items: images
            .map(
              (e) => ClipRRect(
                  child: Stack(
                fit: StackFit.loose,
                children: <Widget>[
                  Image.network(e, width: 2050, height: 700, fit: BoxFit.cover)
                ],
              )),
            )
            .toList(),
      ),
      Positioned(
          left: MediaQuery.of(context).size.width / 300,
          top: MediaQuery.of(context).size.height / 3.25,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
            onPressed: () => buttonCarouselController.previousPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear),
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
              size: 36.0,
            ),
          )),
      Positioned(
          left: MediaQuery.of(context).size.width / 1.05,
          top: MediaQuery.of(context).size.height / 3.25,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.white)),
            onPressed: () => buttonCarouselController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.linear),
            child: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black,
              size: 36.0,
            ),
          )),
      Positioned(
          left: MediaQuery.of(context).size.width / 2.1,
          top: MediaQuery.of(context).size.height / 1.6,
          child: Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                color: const Color(0xFFC4C4C4),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: images.map((e) {
                  int index = images.indexOf(e);
                  return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index
                              ? const Color.fromRGBO(0, 0, 0, 0.9)
                              : Colors.white));
                }).toList(),
              )))
    ]);
  }
}
