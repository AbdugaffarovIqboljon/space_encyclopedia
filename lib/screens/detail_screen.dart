import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_encyclopedia/model/animated_model.dart';

import '../view/background_dottes.dart';
import '../view/detail_screen_background.dart';

class DetailScreen extends StatefulWidget {
  final AnimatedModel model;

  const DetailScreen({super.key, required this.model});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  void navigateToHomeScreen() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return ScreenUtilInit(
      designSize: const Size(430,932),
      minTextAdapt: true,
      builder: (context, child){
        return Scaffold(
          body: Stack(
            children: [
              DetailPageBackground(h: h, w: w),
              const BackgroundDotes(
                x: -0.8,
                y: -0.4,
                color: Colors.green,
                height: 10,
                width: 10,
              ),
              const BackgroundDotes(
                x: -0.4,
                y: -0.9,
                color: Colors.amber,
                height: 10,
                width: 10,
              ),
              const BackgroundDotes(
                x: 0.9,
                y: -0.2,
                color: Colors.deepOrangeAccent,
                height: 10,
                width: 10,
              ),
              const BackgroundDotes(
                x: 0.96,
                y: -0.85,
                color: Colors.deepPurpleAccent,
                height: 12,
                width: 12,
              ),
              const BackgroundDotes(
                x: 0.95,
                y: 0.85,
                color: Colors.blue,
                height: 13,
                width: 13,
              ),
              const BackgroundDotes(
                x: -0.18,
                y: 0.6,
                color: Colors.grey,
                height: 10,
                width: 10,
              ),
              Align(
                alignment: const Alignment(-0.92, -0.92),
                child: IconButton(
                  onPressed: navigateToHomeScreen,
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xFF1946AD),
                    ),
                  ),
                  icon: Icon(
                    Icons.arrow_back,
                    size: 38.sp,
                    color: Colors.orangeAccent.shade400,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.6, -0.7),
                child: Transform.scale(
                  scaleX: 1.5.sp,
                  scaleY: 1.5.sp,
                  child: Hero(
                    tag: widget.model.tag,
                    child: Image.asset(
                      widget.model.image,
                      height: 175.sp,
                      filterQuality: FilterQuality.medium,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.3, 1),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 20.0,
                  ),
                  child: SizedBox(
                    height: 600.sp,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 6.0,
                            ),
                            child: Text(
                              widget.model.name,
                              style: GoogleFonts.poppins(
                                color: const Color(0xFF1946AD),
                                fontSize: 32.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ).tr(),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 18.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(30),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.blueGrey,
                                  offset: Offset(1, 0.7),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                ),
                              ],
                              color: Colors.grey[300],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.model.additionalInfo,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                    color: Colors.grey.shade800,
                                  ),
                                ).tr(),
                                Text(
                                  widget.model.planetSize,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                    color: Colors.grey.shade800,
                                  ),
                                ).tr(),
                                Text(
                                  widget.model.planetTemperature,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                    color: Colors.grey.shade800,
                                  ),
                                ).tr(),
                                Text(
                                  widget.model.planetDistance,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                    color: Colors.grey.shade800,
                                  ),
                                ).tr(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
