import 'package:flutter/material.dart';
import 'package:portfilo/models/consts.dart';
import 'package:portfilo/widget/footer_tile.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      decoration: const BoxDecoration(color: Color(0xff1C1C1C)),
      alignment: Alignment.center,
      child: SizedBox(
        width: height < 800 ? 1020 : 1120,
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Arch Patel",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: constantValue.yellowColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Flutter Developer\nGamer\nAnime and Manga/Mawaha Lover',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: constantValue.whiteColor,
                    ),
                  ),
                ],
              ),
              const Expanded(child: SizedBox(width: 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  footerTitle(text: "Useful Links"),
                  const SizedBox(height: 20),
                  footerSubtitle(text: "Home"),
                  footerSubtitle(text: "About"),
                  footerSubtitle(text: "Skills"),
                  footerSubtitle(text: "Portfolio"),
                  footerSubtitle(text: "Contact"),
                ],
              ),
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  footerTitle(text: "Social Media"),
                  const SizedBox(height: 20),
                  footerSubtitle(text: "Instagram"),
                  footerSubtitle(text: "LinkIn"),
                  footerSubtitle(text: "Github"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
