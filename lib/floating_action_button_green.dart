import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({Key? key}) : super(key: key);


  @override
  State<FloatingActionButtonGreen> createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool press = true;
  Icon icon = const Icon(Icons.favorite_border);
  String  text = 'Agregaste a tus favoritos';

  void onPressedFav(){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(text),
        )
    );

    setState(() {
      if(press){
        press = false;
        icon = const Icon(Icons.favorite);
        text = 'Eliminaste de favoritos';
      }
      else{
        press = true;
        icon = const Icon(Icons.favorite_border);
        text = 'Agregaste a tus favoritos';
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressedFav,
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      child:  icon,
    );
  }
}
