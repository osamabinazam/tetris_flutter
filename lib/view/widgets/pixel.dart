import 'package:flutter/material.dart';

class Pixel extends StatelessWidget {
  final Color color;
  final String? text;
  final double? radius;
  const Pixel({
    super.key,
    required this.color,
    this.text,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius == null ? 8 : radius!),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
          ),
        ],
      ),
      child: Center(
        child: text != null
            ? Text(text!, style: const TextStyle(color: Colors.white))
            : const SizedBox.shrink(),
      ),
    );
  }
}