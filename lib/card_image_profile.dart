import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_description.dart';

class CardImageProfile extends StatelessWidget {
  String pathImage;

  CardImageProfile(this.pathImage);

  @override
  Widget build(BuildContext context) {
    final card = Container(
      width: 450,
      height: 200,
      margin: const EdgeInsets.only(
        top: 80,
        left: 20,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              pathImage,
            ),
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
          shape: BoxShape.rectangle,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15,
              offset: Offset(0.0, 7.0),
            )
          ]
      ),
    );
    return Stack(
      alignment: Alignment(0.0, 2.0),
      children: [
        card,
        CardDescription()
      ],
    );
  }
}
