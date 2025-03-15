import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProgressBar extends StatelessWidget {
  final double percent;

  const ProgressBar({Key? key, required this.percent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: LinearPercentIndicator(
        lineHeight: 14.0,
        percent: percent,
        backgroundColor: Colors.grey[300]!,
        progressColor: Colors.blue,
        barRadius: Radius.circular(8),
        animation: true,
        animationDuration: 1000,
      ),
    );
  }
}
