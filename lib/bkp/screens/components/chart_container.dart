import 'package:flutter/material.dart';

class ChartContainer extends StatelessWidget {
  const ChartContainer({super.key, required this.chart});

  final Widget chart;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * .95,
        height: MediaQuery.of(context).size.width * .95 * .65,
        padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          child: chart,
        ),
      ),
    );
  }
}
