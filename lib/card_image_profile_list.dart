import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image_profile.dart';

class CardImageProfileList extends StatelessWidget {
  const CardImageProfileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 180),
      height: 740,
      child: ListView(
        padding: const EdgeInsets.all(25),
        scrollDirection: Axis.vertical,
        children: [
          CardImageProfile('assets/img/beach_palm.jpeg'),
          CardImageProfile('assets/img/mountain.jpeg'),
          CardImageProfile('assets/img/river.jpeg'),
        ],
      ),
    );
  }
}
