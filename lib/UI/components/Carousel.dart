import 'package:flutter/material.dart';

//3rd party libraries
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget{
  double _height;
  List _items;

  Carousel(double height, List items) {
    this._height = height;
    this._items = items;
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: _height),
      items: _items.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Text(
                  'text $i',
                  style: TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }
}
