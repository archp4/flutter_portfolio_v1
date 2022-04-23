import 'package:flutter/material.dart';
import 'package:portfilo/models/consts.dart';
import 'package:portfilo/models/links.dart';
import 'package:portfilo/models/projects.dart';
import 'package:portfilo/widget/custom_textstyle.dart';
import 'package:portfilo/widget/header_text.dart';
import 'package:portfilo/widget/highlight_section.dart';
import 'package:portfilo/widget/icons.dart';

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
            highlightSection(text: "MY PERSONAL PROJECTS"),
            const SizedBox(height: 10),
            headerText(text: "Featured Works"),
            const SizedBox(height: 40),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 40,
              runSpacing: 40,
              children: [
                card(
                  title: projects[0].title,
                  description: projects[0].description,
                  links: projects[0].links,
                ),
                card(
                  title: projects[1].title,
                  description: projects[1].description,
                  links: projects[1].links,
                ),
                card(
                  title: projects[2].title,
                  description: projects[2].description,
                  links: projects[2].links,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget card({
    required String title,
    required String description,
    required Links links,
  }) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        color: constantValue.cardBackground,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          Column(
            children: [
              Text(
                title,
                style: workTitleTextStyle(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                description,
                style: worksubtitleTextStyle(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Row(
              children: [
                if (links.github != null)
                  circleIconNetwork(
                    assetsPath:
                        'https://api.iconify.design/icon-park/github-one.svg',
                  ),
                if (links.youtube != null)
                  circleIconNetwork(
                    assetsPath:
                        'https://api.iconify.design/logos/youtube-icon.svg',
                  ),
                if (links.demo != null)
                  circleIconNetwork(
                    assetsPath:
                        'https://api.iconify.design/akar-icons/link-chain.svg',
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
