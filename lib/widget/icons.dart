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

Widget circleIconNetwork({required String assetsPath}) {
  return Container(
    decoration: const BoxDecoration(
      color: Color(0xff383E45),
      shape: BoxShape.circle,
    ),
    child: SizedBox(
      width: 24,
      height: 24,
      child: SvgPicture.network(
        assetsPath,
      ),
    ),
  );
}
