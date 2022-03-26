import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title = 'Popular';
  double alto = 250;
  GradientBack(this.title, this.alto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: alto,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff4268d3),
            Color(0xff584cd1),
          ],
          begin: FractionalOffset(
            0.2,
            0.0,
          ),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
            fontFamily: 'Lato'),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}
//'Recuerda todo y usalo todo'
