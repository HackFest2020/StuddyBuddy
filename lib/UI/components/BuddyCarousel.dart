import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_buddy/Models/BuddyCarouselModel.dart';

//3rd party libraries
import 'package:carousel_slider/carousel_slider.dart';

class BuddyCarousel extends StatelessWidget {
  double _height;
  List _items;

  BuddyCarousel(double height, List items) {
    _height = height;
    _items = items;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BuddyCarouselModel>(builder: (context, carouselModel, child) {
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => carouselModel.navigateToPage()));
            },
            child: Builder(
              builder: (BuildContext context) {
                return Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
                    width: MediaQuery.of(context).size.width,
                    //margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Card(
                      elevation: 10,
                      borderOnForeground: true,
                      semanticContainer: true,
                      color: Colors.white,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
                          child: Image.asset('./assets/img/' + i,
                              fit: BoxFit.contain)),
                    ));
              },
            ),
          );
        }).toList(),
      );
    });
  }
}