import 'package:flutter/material.dart';

class TextFieldSuffix extends StatelessWidget {
  const TextFieldSuffix({
    super.key,
    required this.icon,
    this.size = 18,
    this.color
  });

  final IconData icon;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
        ),
        child:  Icon(
          icon,
          color: color ?? Colors.white70,
          size: size,
        ),
      ),
    );
  }
}
