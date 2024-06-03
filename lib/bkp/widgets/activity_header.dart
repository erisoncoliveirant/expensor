import 'package:flutter/material.dart';

import '../constant.dart';

class ActivityHeader extends StatelessWidget {
  const ActivityHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Activity",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            Text(
              "Day",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "Week",
              style: TextStyle(color: kDarkBlue),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "Month",
              style: TextStyle(color: Colors.grey),
            )
          ],
        )
      ],
    );
  }
}
