import 'package:flutter/material.dart';

class AppbarNav extends StatelessWidget {
  final ScrollController controller;
  final VoidCallback onClick;
  final int index;
  const AppbarNav({
    Key? key,
    required this.index,
    required this.controller,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        tile(name: "Home", index: 0, context: context),
        tile(name: "About Me", index: 1, context: context),
        tile(name: "Skills", index: 2, context: context),
        tile(name: "Projects", index: 3, context: context),
      ],
    );
  }

  Widget tile(
      {required String name,
      required double index,
      required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: () {
          double length = (index * MediaQuery.of(context).size.height);
          if (index < 2) {
            length += index;
            if (MediaQuery.of(context).size.height < 800 && index == 1) {
              length += 230;
            }
          } else {
            if (MediaQuery.of(context).size.height > 800 && index == 2) {
              length -= 400;
            }
            if (MediaQuery.of(context).size.height > 800 && index == 3) {
              length -= 250;
            } else {
              length += 400;
            }
          }
          controller.jumpTo(length);
        },
        child: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
