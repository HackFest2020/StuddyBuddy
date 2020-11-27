import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_buddy/Models/CarouselModel.dart';

//3rd party libraries
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  double _height;
  List _items;

  Carousel(double height, List items) {
    _height = height;
    _items = items;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CarouselModel>(builder: (context, carouselModel, child) {
      return CarouselSlider(
        options: CarouselOptions(
            height: _height,
            initialPage: 0,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              carouselModel.changeDescription(index);
              //DescriptionText().changeDescription(index);
            }),
        items: _items.map((i) {
          return GestureDetector(
            onTap: () {
              //TODO: add tap action to carousel
            },
            child: Builder(
              builder: (BuildContext context) {
                return Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                    width: MediaQuery.of(context).size.width,
                    //margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Card(
                      elevation: 3,
                      borderOnForeground: true,
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child:
                          Image.asset('./assets/img/' + i, fit: BoxFit.contain),
                    ));
              },
            ),
          );
        }).toList(),
      );
    });
  }
}
