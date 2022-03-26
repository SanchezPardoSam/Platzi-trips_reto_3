import 'package:flutter/material.dart';

class GradientProfile extends StatelessWidget {
  String title = 'Profile';
  double alto = 250;
  GradientProfile(this.title, this.alto);

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
      child: Container(
        height: 250,
        padding: const EdgeInsets.only(
          top: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: 'Lato'),
                  ),
                  const Icon(
                    Icons.settings,
                    color: Colors.grey,
                    size: 15,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                  ),
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/img/mujer.jpg',
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 18),
                      child: const Text(
                        'Pathum Tzoo',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: const Text(
                        'pathumtzoo@gmail.com',
                        style: TextStyle(color: Colors.white60),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: Icon(
                    Icons.turned_in_not,
                    color: Color(0xff4268d3),
                    size: 25,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: Icon(
                    Icons.calendar_today_rounded,
                    color: Color(0xff4268d3),
                    size: 25,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.add,
                    color: Color(0xff4268d3),
                    size: 50,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: Icon(
                    Icons.email_outlined,
                    color: Color(0xff4268d3),
                    size: 25,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                  child: Icon(
                    Icons.person,
                    color: Color(0xff4268d3),
                    size: 25,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      alignment: const Alignment(
        -0.9,
        -0.6,
      ),
    );
  }
}
//'Recuerda todo y usalo todo'
