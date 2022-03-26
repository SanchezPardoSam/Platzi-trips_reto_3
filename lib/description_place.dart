import 'package:flutter/material.dart';
import 'package:platzi_trips_app/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descripction;

  DescriptionPlace(this.namePlace, this.stars, this.descripction, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final description = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: Text(
        descripction,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black45,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato",

        ),
        textAlign: TextAlign.justify,
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star,
        color: Color(0xFFF2C611),
      ),
    );

    final star_half = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        color: Color(0xFFF2C611),
      ),
    );

    final star_border = Container(
      margin: const EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        color: Color(0xFFF2C611),
      ),
    );

    final title_star = Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 320.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Text(
                namePlace,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Lato",
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Row(
              children: [
                star,
                star,
                star,
                star,
                star,
              ],
            ),
          ],
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_star,
        description,
        ButtonPurple('Navigate')
      ],
    );
  }
}
