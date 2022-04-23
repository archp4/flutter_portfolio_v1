import 'package:flutter/material.dart';
import 'package:portfilo/consts.dart';
import 'package:portfilo/views/about_me.dart';
import 'package:portfilo/views/footer.dart';
import 'package:portfilo/views/intro.dart';
import 'package:portfilo/views/skill.dart';
import 'package:portfilo/views/work.dart';
import 'package:portfilo/widget/appbar_nav.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var index = 1;
  ScrollController scollBarController = ScrollController();
  List<Widget> widgetList = [
    const Intro(),
    const AboutMe(),
    const Skill(),
    const PersonalProject(),
    const Footer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constantValue.blackColor,
      appBar: AppBar(
        leading: Image.asset("assets/images/logo.png"),
        backgroundColor: constantValue.blackColor,
        elevation: 0,
        centerTitle: true,
        title: AppbarNav(
          controller: scollBarController,
          onClick: () async {},
          index: index,
        ),
        actions: [
          Center(
            child: SizedBox(
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: constantValue.yellowColor,
                ),
                onPressed: () async {},
                child: Text(
                  "Contact Me",
                  style: TextStyle(
                    color: constantValue.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView.separated(
        controller: scollBarController,
        itemBuilder: (context, index) {
          return widgetList[index];
        },
        separatorBuilder: (contact, index) {
          return const SizedBox(height: 250);
        },
        itemCount: widgetList.length,
      ),
    );
  }
}
