import 'package:flutter/material.dart';

import '../../../res/app_color.dart';

class IconContainer extends StatelessWidget {
  final Widget widget;
  final Color? color;
  final double? height;

  const IconContainer({
    super.key,
    required this.widget,
    this.color,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.sizeOf(context);

    return Container(
      height: height ?? 60,
      width: size.width * 0.43,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color ?? Colors.grey,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
                color: Colors.white.withOpacity(.2),
                offset: const Offset(1,0)
            ),
            BoxShadow(
                color: Colors.white.withOpacity(.2),
                offset: const Offset(0,1)
            ),
            BoxShadow(
                color: Colors.white.withOpacity(.2),
                offset: const Offset(-1,0)
            ),
            BoxShadow(
                color: Colors.white.withOpacity(.2),
                offset: const Offset(0,-1)
            ),
          ]
      ),
      child: widget,
    );
  }
}
