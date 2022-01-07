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
    "../../assets/images/imagem-preta.jpg",
    "../../assets/images/imagem-rosa.png",
    "../../assets/images/imagem-azul.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: CarouselSlider(
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            height: 400,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 10),
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: images
              .map((e) => Stack(children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.network(e,
                                width: 1050, height: 350, fit: BoxFit.cover)
                          ],
                        )),
                    Positioned(
                        left: MediaQuery.of(context).size.width / 40,
                        top: MediaQuery.of(context).size.height / 4,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white)),
                          onPressed: () =>
                              buttonCarouselController.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear),
                          child: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                            color: Colors.black,
                            size: 36.0,
                          ),
                        )),
                    Positioned(
                        left: MediaQuery.of(context).size.width / 1.37,
                        top: MediaQuery.of(context).size.height / 4,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white)),
                          onPressed: () => buttonCarouselController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black,
                            size: 36.0,
                          ),
                        ))
                  ]))
              .toList(),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: images.map((e) {
          int index = images.indexOf(e);
          return Container(
              width: 8.0,
              height: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? const Color.fromRGBO(0, 0, 0, 0.9)
                      : const Color.fromRGBO(0, 0, 0, 0.4)));
        }).toList(),
      )
    ]);
  }
}
