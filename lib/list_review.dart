import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ListReview extends StatelessWidget {
  const ListReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review(
          "assets/img/mujer.jpg",
          'Varuna Yasas',
          '1 review 5 photos',
          'There is an amazing place in Sri Lanka',
        ),
        Review(
          "assets/img/people.jpg",
          'Varuna Yasas',
          '1 review 5 photos',
          'There is an amazing place in Sri Lanka',
        ),
        Review(
          "assets/img/girl.jpg",
          'Varuna Yasas',
          '1 review 5 photos',
          'There is an amazing place in Sri Lanka',
        )
      ],
    );
  }
}
