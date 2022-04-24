import 'package:flutter/material.dart';
import 'package:portfilo/models/responstive_helper.dart';
import 'package:portfilo/widget/custom_textstyle.dart';
import 'package:portfilo/widget/header_text.dart';
import 'package:portfilo/widget/highlight_section.dart';
import 'package:portfilo/widget/hire_buttom.dart';
import 'package:portfilo/widget/icons.dart';

class Skill extends StatelessWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    if (ResponstiveHelper.isDesktop(context)) {
      return Container(
        alignment: Alignment.center,
        child: SizedBox(
          width: height < 800 ? 1020 : 1120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 500,
                child: _buildLeftPanel(context),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: height < 800 ? 350 : 500,
                child: _buildRightPanel(),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        alignment: Alignment.center,
        child: SizedBox(
          width: height < 800 ? 1020 : 1120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 500,
                child: _buildLeftPanel(context),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                width: height < 800 ? 350 : 500,
                child: _buildRightPanel(),
              ),
            ],
          ),
        ),
      );
    }
  }

  _buildLeftPanel(context) {
    return Container(
      margin: ResponstiveHelper.isDesktop(context)
          ? const EdgeInsets.symmetric(horizontal: 0)
          : const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          highlightSection(text: "MY SKILLS"),
          const SizedBox(height: 10),
          headerText(
              text: "What My Programming Skills Included?", context: context),
          const SizedBox(height: 40),
          Text(
            "I develop simple, intuitive and responsive user interface that helps users get things done with less effort and time with those technologies.",
            style: bodyTextStyle(),
          ),
          const SizedBox(
            height: 100,
          ),
          if (ResponstiveHelper.isDesktop(context)) hireButton(),
        ],
      ),
    );
  }

  _buildRightPanel() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            customIcon(assetsPath: "assets/svg/html.svg"),
            customIcon(assetsPath: "assets/svg/css.svg"),
            customIconNetwork(
              assetsPath:
                  'https://api.iconify.design/vscode-icons/file-type-js-official.svg',
            ),
            customIcon(assetsPath: "assets/svg/git-icon.svg"),
            customIcon(assetsPath: "assets/svg/github.svg"),
            customIcon(assetsPath: "assets/svg/python.svg"),
            customIconNetwork(
              assetsPath:
                  'https://api.iconify.design/vscode-icons/file-type-vscode.svg',
            ),
            customIcon(assetsPath: "assets/svg/figma.svg"),
            customIcon(assetsPath: "assets/svg/flutter.svg"),
            customIcon(assetsPath: "assets/svg/dart.svg"),
            customIcon(assetsPath: "assets/svg/html.svg"),
            customIconNetwork(
              assetsPath:
                  'https://api.iconify.design/vscode-icons/file-type-php.svg',
            ),
            customIconNetwork(
              assetsPath: 'https://api.iconify.design/logos/mysql.svg',
            ),
            customIconNetwork(
              assetsPath:
                  'https://api.iconify.design/vscode-icons/file-type-firebase.svg',
            ),
            customIconNetwork(
              assetsPath:
                  'https://api.iconify.design/vscode-icons/file-type-light-solidity.svg',
            ),
          ],
        ),
      ],
    );
  }
}
