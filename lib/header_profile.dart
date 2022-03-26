import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image_profile_list.dart';
import 'package:platzi_trips_app/gradient_back.dart';
import 'package:platzi_trips_app/gradient_profile.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0.9, -1),
      fit: StackFit.passthrough,
      children: [
        GradientProfile('Profile', 350),
        CardImageProfileList(),
      ],
    );
  }
}
