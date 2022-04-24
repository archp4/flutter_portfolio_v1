import 'package:flutter/material.dart';
import 'package:portfilo/models/responstive_helper.dart';
import 'package:portfilo/widget/custom_textstyle.dart';
import 'package:portfilo/widget/header_text.dart';
import 'package:portfilo/widget/highlight_section.dart';
import 'package:portfilo/widget/hire_buttom.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  Widget _data(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        highlightSection(text: "WHO I AM", context: context),
        const SizedBox(
          height: 10,
        ),
        headerText(text: "About Me", context: context),
        const SizedBox(
          height: 40,
        ),
        Text(
          "Hi! I’m Arch Patel, and I’m Flutter developer who has passion for building clean web applications with intuitive functionality. I enjoy the process of turning ideas into reality using creative solutions. I’m always curious about learning new skills, tools, and concepts. In addition to working on various solo full stack projects, I have worked with creative teams, which involves daily stand-ups and communications, source control, and project management.",
          style: bodyTextStyle(),
          textAlign: ResponstiveHelper.isMobile(context)
              ? TextAlign.justify
              : TextAlign.left,
        ),
        const SizedBox(
          height: 100,
        ),
        if (ResponstiveHelper.isDesktop(context)) hireButton(),
      ],
    );
  }

  Widget _image(double height, BuildContext context) {
    return Image.asset(
      "assets/images/yellow_me_2.png",
      width: ResponstiveHelper.isDesktop(context)
          ? height < 800
              ? 500
              : 500
          : 300,
      height: ResponstiveHelper.isDesktop(context)
          ? height < 800
              ? 500
              : 500
          : 300,
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    if (!ResponstiveHelper.isMobile(context)) {
      return Container(
        alignment: Alignment.center,
        child: SizedBox(
          width: ResponstiveHelper.isDesktop(context)
              ? height < 800
                  ? 1020
                  : 1120
              : 720,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              _image(height, context),
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: ResponstiveHelper.isDesktop(context)
                    ? height < 800
                        ? 500
                        : 600
                    : 400,
                child: _data(context),
              ),
            ],
          ),
        ),
      );
    }
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _image(height, context),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: height < 800 ? 500 : 600,
              child: _data(context),
            ),
          ],
        ),
      ),
    );
  }
}
