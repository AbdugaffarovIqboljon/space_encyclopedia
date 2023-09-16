import 'package:flutter/cupertino.dart';


class DetailPageBackground extends StatelessWidget {
  const DetailPageBackground({
    super.key,
    required this.h,
    required this.w,
  });

  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        color: CupertinoColors.activeBlue.darkHighContrastColor,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFFF7F8F9).withOpacity(0.2),
            const Color(0xFFF7F8F9).withOpacity(0.4),
            const Color(0xFFF7F8F9).withOpacity(0.6),
            const Color(0xFFF7F8F9).withOpacity(0.9),
            const Color(0xFFF7F8F9),
          ],
        ),
      ),
    );
  }
}