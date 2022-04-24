import 'package:flutter/material.dart';
import 'package:portfilo/models/consts.dart';
import 'package:portfilo/models/responstive_helper.dart';

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
              Text(
                "Hi,I Am ",
                style: TextStyle(
                  fontSize: ResponstiveHelper.isDesktop(context) ? 32 : 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text(
                    "Arch Patel",
                    style: TextStyle(
                      fontSize: ResponstiveHelper.isDesktop(context) ? 32 : 24,
                      fontWeight: FontWeight.bold,
                      color: constantValue.yellowColor,
                    ),
                  ),
                  Container(
                    height: 3,
                    width: ResponstiveHelper.isDesktop(context) ? 148 : 110,
                    color: constantValue.yellowColor,
                  )
                ],
              ),
            ],
          ),
          Text(
            "Flutter Developer & Otaku",
            style: TextStyle(
              fontSize: ResponstiveHelper.isDesktop(context) ? 48 : 36,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            "I Like Code Cool Beautifly Simply Design, Also like watch and read anime and manga",
            style: TextStyle(
              fontSize: ResponstiveHelper.isDesktop(context) ? 24 : 16,
              color: Colors.white.withOpacity(0.6),
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
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
