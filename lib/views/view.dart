import 'package:flutter/material.dart';

class TempCard extends StatelessWidget {
  const TempCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: Colors.amber,
      padding: const EdgeInsets.all(20),
    );
  }
}
