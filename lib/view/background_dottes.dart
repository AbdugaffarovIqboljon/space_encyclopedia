import 'package:flutter/material.dart';

class BackgroundDotes extends StatelessWidget {
  final double x;
  final double y;
  final double height;
  final double width;
  final Color color;

  const BackgroundDotes({
    super.key,
    required this.x,
    required this.y,
    required this.color,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(y, x),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }
}