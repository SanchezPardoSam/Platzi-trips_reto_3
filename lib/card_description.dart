import 'package:flutter/material.dart';
import 'package:platzi_trips_app/button_purple.dart';
import 'package:platzi_trips_app/floating_action_button_green.dart';

class CardDescription extends StatefulWidget {
  const CardDescription({Key? key}) : super(key: key);

  @override
  State<CardDescription> createState() => _CardDescriptionState();
}

class _CardDescriptionState extends State<CardDescription> {
  @override
  Widget build(BuildContext context) {
    final cardDescription = Container(
      padding: const EdgeInsets.all(5),
      width: 270,
      height: 120,
      margin: const EdgeInsets.only(
        top: 80,
        left: 20,
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black38,
              blurRadius: 15,
              offset: Offset(0.0, 7.0),
            ),
          ]),
      child: Stack(
        children: const [
          Positioned(
            left: 20,
            top: 10,
            child: Text(
              'Knuckles Mountains Range',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            top: 35,
            left: 20,
            child: Text('Hiking, Water tail hunting, Natural bath,',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                )),
          ),
          Positioned(
            left: 20,
            top: 50,
            child: Text(
              'Scenary & Photography',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 22,
            child: Text(
              'Steps 123, 123, 123',
              style: TextStyle(
                fontSize: 14,
                color: Colors.orange,
              ),
            ),
          )
        ],
      ),
    );
    return Stack(
      alignment: const Alignment(0.9, 1.2),
      children: [
        cardDescription,
         FloatingActionButtonGreen(),
      ],
    );
  }
}
