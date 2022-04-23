import 'package:flutter/material.dart';
import 'package:portfilo/models/consts.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 10,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Hi,I Am ",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text(
                    "Arch Patel",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: constantValue.yellowColor,
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 148,
                    color: constantValue.yellowColor,
                  )
                ],
              ),
            ],
          ),
          const Text(
            "Flutter Developer & Otaku",
            style: TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            "I Like Code Cool Beautifly Simply Design, Also like watch and read anime and manga",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white.withOpacity(0.6),
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/images/emoji.png",
            width: 150,
            height: 150,
          )
        ],
      ),
    );
  }
}
