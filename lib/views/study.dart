import 'package:flutter/material.dart';
import 'package:portfilo/models/consts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class StudyTimeline extends StatelessWidget {
  const StudyTimeline({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 160),
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          TimelineTile(
            axis: TimelineAxis.horizontal,
            alignment: TimelineAlign.center,
            isFirst: true,
            indicatorStyle: IndicatorStyle(
              color: constantValue.yellowColor,
            ),
            beforeLineStyle: LineStyle(
              color: constantValue.yellowColor,
              thickness: 6,
            ),
            startChild: Container(
              constraints: const BoxConstraints(
                minWidth: 120,
              ),
              color: constantValue.redColor,
            ),
          ),
          TimelineTile(
            axis: TimelineAxis.horizontal,
            alignment: TimelineAlign.center,
            indicatorStyle: IndicatorStyle(
              height: 20,
              color: constantValue.yellowColor,
            ),
            beforeLineStyle: LineStyle(
              color: constantValue.yellowColor,
              thickness: 6,
            ),
            afterLineStyle: LineStyle(
              color: constantValue.yellowColor,
              thickness: 6,
            ),
          ),
          TimelineTile(
            axis: TimelineAxis.horizontal,
            alignment: TimelineAlign.center,
            isLast: true,
            indicatorStyle: IndicatorStyle(
              height: 20,
              color: constantValue.yellowColor,
            ),
            beforeLineStyle: LineStyle(
              color: constantValue.yellowColor,
              thickness: 6,
            ),
            endChild: Container(
              constraints: const BoxConstraints(
                minWidth: 80,
              ),
              color: constantValue.redColor,
            ),
          ),
        ],
      ),
    );
  }
}
