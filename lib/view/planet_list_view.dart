import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PlanetListView extends StatelessWidget {
  final double? scaleY;
  final double? scaleX;
  final String planetName;
  final String description;
  final String kilometresFromTheSun;
  final String size;
  final String temperature;
  final String additionalInfo;
  final ImageProvider assetImage;
   final String tag;
  final void Function() onTap;

  const PlanetListView({
    super.key,
    required this.assetImage,
    required this.planetName,
    this.scaleY,
    this.scaleX,
    required this.description,
    required this.kilometresFromTheSun,
    required this.size,
    required this.temperature,
    required this.additionalInfo,
    required this.onTap,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.sizeOf(context).width;
    final h = MediaQuery.sizeOf(context).height;
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      builder: (context, child) {
        return SizedBox(
          width: w,
          child: Padding(
            padding: EdgeInsets.only(top: h * 0.3),
            child: Stack(
              children: [
                Container(
                  height: 450.sp,
                  width: 300.sp,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(90),
                      bottom: Radius.circular(90),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: h * 0.083,
                      left: 13.0,
                      right: 13.0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          planetName,
                          style: GoogleFonts.poppins(
                            fontSize: 23.sp,
                            color: const Color(0xFF1946AD),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.0.sp,
                            horizontal: 15.0.sp,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(20),
                              bottom: Radius.circular(20),
                            ),
                            border: Border.all(
                              color: const Color(0xFF1946AD).withOpacity(0.6),
                              width: 1.2,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              description,
                              style: GoogleFonts.poppins(
                                fontSize: 16.5.sp,
                                color: const Color(0xFF1946AD),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0, h * 0.0008),
                  child: GestureDetector(
                    onTap: onTap,
                    child: Container(
                      height: 60.sp,
                      width: 60.sp,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        border:
                            Border.all(width: 10, color: Colors.grey.shade100),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(120),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black.withOpacity(0.75),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.1, -2.3),
                  child: Transform.scale(
                    scaleY: scaleY,
                    scaleX: scaleX,
                    child: Hero(
                      tag: tag,
                      child: Image(
                        height: MediaQuery.sizeOf(context).height * 0.28,
                        width: MediaQuery.sizeOf(context).width * 0.28,
                        image: assetImage,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
