import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = 'assets/img/people.jpg';
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";

  Review(this.pathImage, this.name, this.details, this.comment, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: const EdgeInsets.only(
        top: 3.0,
        right: 5.0,
      ),
      child: const Icon(
        Icons.star,
        size: 20,
        color: Color(0xFFF2C611),
      ),
    );

    final star_half = Container(
      margin: const EdgeInsets.only(
        top: 3.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_half,
        size: 20,
        color: Color(0xFFF2C611),
      ),
    );

    final star_border = Container(
      margin: const EdgeInsets.only(
        top: 3.0,
        right: 3.0,
      ),
      child: const Icon(
        Icons.star_border,
        size: 20,
        color: Color(0xFFF2C611),
      ),
    );

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 13,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userInfo = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 13,
              color: Color(0xffa3a5a7),
            ),
          ),
        ),
        star,
        star,
        star,
        star_half,
        star_border
      ],
    );

    final userName = Container(
      margin: const EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(fontFamily: 'Lato', fontSize: 17),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComment,
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            pathImage,
          ),
        ),
      ),
    );

    return Row(
      children: [
        photo,
        userDetails,
      ],
    );
  }
}
