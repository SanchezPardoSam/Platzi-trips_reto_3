import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image.dart';


class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25,),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage('assets/img/beach_palm.jpeg'),
          CardImage('assets/img/mountain.jpeg'),
          CardImage('assets/img/river.jpeg'),
        ],
      ),
    );
  }
}
