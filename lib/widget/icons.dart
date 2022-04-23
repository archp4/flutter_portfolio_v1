import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget customIcon({required String assetsPath}) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xff383E45),
      borderRadius: BorderRadius.circular(10),
    ),
    child: SizedBox(
      width: 48,
      height: 48,
      child: SvgPicture.asset(
        assetsPath,
      ),
    ),
  );
}

Widget customIconNetwork({required String assetsPath}) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: const Color(0xff383E45),
      borderRadius: BorderRadius.circular(10),
    ),
    child: SizedBox(
      width: 48,
      height: 48,
      child: SvgPicture.network(
        assetsPath,
      ),
    ),
  );
}
