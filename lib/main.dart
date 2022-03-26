import 'package:flutter/material.dart';
import 'package:platzi_trips_app/description_place.dart';
import 'package:platzi_trips_app/gradient_back.dart';
import 'package:platzi_trips_app/header_appbar.dart';
import 'package:platzi_trips_app/list_review.dart';
import 'package:platzi_trips_app/platzi_trips.dart';
import 'package:platzi_trips_app/review.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Platzi trips app',
      home: Home(),
    ),
  );
}



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const PlatziTrips();
  }
}
