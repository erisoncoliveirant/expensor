import 'package:flutter/material.dart';

import '../constant.dart';

class PlaningHeader extends StatelessWidget {
  const PlaningHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "Planning ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "View All",
              style: TextStyle(color: kDarkBlue, height: 2),
            )
          ],
        ),
        Row(
          children: [
            Icon(Icons.calendar_month_outlined, color: Colors.grey,),
            SizedBox(width: 5,),
            Text(
              "18 July 2022",
              style: TextStyle(
                  fontSize: 16,
                  color: kDarkBlue,
                  height: 2,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
