import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText = 'Navigate';
  ButtonPurple(this.buttonText);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
        ),
        width: 180,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: const LinearGradient(
              colors: [Color(0xff4268d3), Color(0xff584cd1)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1, 0.6),
              stops: [0, 0.6],
              tileMode: TileMode.clamp,
            )),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Navegando"),
          ),
        );
      },
    );
  }
}
