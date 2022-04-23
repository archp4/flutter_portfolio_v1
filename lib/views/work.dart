import 'package:flutter/material.dart';
import 'package:portfilo/models/consts.dart';
import 'package:portfilo/widget/custom_textstyle.dart';
import 'package:portfilo/widget/header_text.dart';
import 'package:portfilo/widget/highlight_section.dart';

class PersonalProject extends StatelessWidget {
  const PersonalProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        width: height < 800 ? 1020 : 1120,
        child: Column(
          children: [
            highlightSection(text: "MY SKILLS"),
            const SizedBox(height: 10),
            headerText(text: "Featured Works"),
            const SizedBox(height: 40),
            card(
              title: "",
              description: "",
              links: "",
            )
          ],
        ),
      ),
    );
  }

  Widget card({
    required String title,
    required String description,
    required String links,
  }) {
    return Container(
      decoration: BoxDecoration(color: constantValue.cardBackground),
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          Column(
            children: [
              Text(
                'title',
                style: workTitleTextStyle(),
              ),
              Text(
                'description',
                style: worksubtitleTextStyle(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
