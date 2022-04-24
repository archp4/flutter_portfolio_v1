import 'package:flutter/material.dart';
import 'package:portfilo/models/consts.dart';
import 'package:portfilo/models/links.dart';
import 'package:portfilo/models/responstive_helper.dart';
import 'package:portfilo/widget/footer_tile.dart';
import 'package:portfilo/widget/icons.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  final ScrollController controller;
  const Footer({Key? key, required this.controller}) : super(key: key);

  onTap({required int index, required BuildContext context}) {
    double length = (index * MediaQuery.of(context).size.height);
    if (index < 2) {
      length += index;
      if (MediaQuery.of(context).size.height < 800 && index == 1) {
        length += 230;
      }
    } else {
      if (MediaQuery.of(context).size.height > 800 && index == 2) {
        length -= 200;
      }
      if (MediaQuery.of(context).size.height > 800 && index == 3) {
        length -= 250;
      } else {
        length += 400;
      }
    }
    controller.jumpTo(length);
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    if (ResponstiveHelper.isMobile(context)) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        decoration: const BoxDecoration(color: Color(0xff1C1C1C)),
        alignment: Alignment.center,
        child: SizedBox(
          width: double.infinity,
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
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: constantValue.yellowColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Flutter Developer\nGamer\n',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: constantValue.whiteColor,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    footerTitleMoblie(text: "Social Media"),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      alignment: WrapAlignment.end,
                      children: [
                        customClickableIconNetwork(
                          assetsPath:
                              'https://api.iconify.design/logos/linkedin-icon.svg',
                          onTap: () async {
                            if (myLinks.linkedIn != null) {
                              await launchUrl(Uri.parse(myLinks.linkedIn!));
                            }
                          },
                        ),
                        customClickableIconNetwork(
                          assetsPath:
                              'https://api.iconify.design/icon-park/github.svg',
                          onTap: () async {
                            if (myLinks.github != null) {
                              await launchUrl(Uri.parse(myLinks.github!));
                            }
                          },
                        ),
                        customClickableIconNetwork(
                          assetsPath:
                              'https://api.iconify.design/logos/facebook.svg',
                          onTap: () async {
                            if (myLinks.facebook != null) {
                              await launchUrl(Uri.parse(myLinks.facebook!));
                            }
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
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
                    'Flutter Developer\nGamer\nAnime and Manga/manhwa Lover',
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
                  footerSubtitle(
                    text: "Home",
                    onTap: () {
                      onTap(index: 0, context: context);
                    },
                  ),
                  footerSubtitle(
                    text: "About",
                    onTap: () {
                      onTap(index: 1, context: context);
                    },
                  ),
                  footerSubtitle(
                    text: "Skills",
                    onTap: () {
                      onTap(index: 2, context: context);
                    },
                  ),
                  footerSubtitle(
                    text: "Portfolio",
                    onTap: () async {
                      await launchUrl(Uri.parse(resumeUrl));
                    },
                  ),
                  footerSubtitle(
                    text: "Contact",
                    onTap: () async {
                      await launchUrl(Uri.parse(resumeUrl));
                    },
                  ),
                ],
              ),
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  footerTitle(text: "Social Media"),
                  const SizedBox(height: 20),
                  footerSubtitle(
                    text: "LinkedIn",
                    onTap: () async {
                      if (myLinks.linkedIn != null) {
                        await launchUrl(Uri.parse(myLinks.linkedIn!));
                      }
                    },
                  ),
                  footerSubtitle(
                    text: "Github",
                    onTap: () async {
                      if (myLinks.github != null) {
                        await launchUrl(Uri.parse(myLinks.github!));
                      }
                    },
                  ),
                  footerSubtitle(
                    text: "Instagram",
                    onTap: () async {
                      if (myLinks.instagram != null) {
                        await launchUrl(Uri.parse(myLinks.instagram!));
                      }
                    },
                  ),
                  footerSubtitle(
                    text: "Facebook",
                    onTap: () async {
                      if (myLinks.facebook != null) {
                        await launchUrl(Uri.parse(myLinks.facebook!));
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
