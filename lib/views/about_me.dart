import 'package:flutter/material.dart';
import 'package:portfilo/widget/custom_textstyle.dart';
import 'package:portfilo/widget/header_text.dart';
import 'package:portfilo/widget/highlight_section.dart';
import 'package:portfilo/widget/hire_buttom.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        width: height < 800 ? 1020 : 1120,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _image(height),
            Container(
              margin: const EdgeInsets.only(left: 20),
              width: height < 800 ? 500 : 600,
              child: _data(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _data() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        highlightSection(text: "WHO I AM"),
        const SizedBox(
          height: 10,
        ),
        headerText(text: "About Me"),
        const SizedBox(
          height: 40,
        ),
        Text(
          "Hi! I’m Arch Patel, and I’m Flutter developer who has passion for building clean web applications with intuitive functionality. I enjoy the process of turning ideas into reality using creative solutions. I’m always curious about learning new skills, tools, and concepts. In addition to working on various solo full stack projects, I have worked with creative teams, which involves daily stand-ups and communications, source control, and project management.",
          style: bodyTextStyle(),
        ),
        const SizedBox(
          height: 100,
        ),
        hireButton(),
      ],
    );
  }

  Widget _image(double height) {
    return Image.asset(
      "assets/images/yellow_me_2.png",
      width: height < 800 ? 500 : 500,
      height: height < 800 ? 500 : 500,
    );
  }
}
