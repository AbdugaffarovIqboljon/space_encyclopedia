import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_encyclopedia/view/custom_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  final controller = CarouselController();
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Transform.scale(
                scaleX: 4,
                scaleY: 4,
                child: const Image(
                  image: AssetImage('assets/images/img_stars_background.jpg'),
                ),
              ),
            ),
            CustomCarouselSlider(lights: _lights, controller: controller)
                .animate()
                .scale(
                  curve: const FlippedCurve(Curves.bounceInOut),
                  duration: const Duration(milliseconds: 1000),
                )
                .flip(),
            Align(
              alignment: const Alignment(1, -1.01),
              child: PopupMenuButton<Locale>(
                color: Colors.blue.shade100,
                elevation: 10,
                tooltip: 'languages'.tr(),
                shadowColor: Colors.cyanAccent,
                onSelected: context.setLocale,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                itemBuilder: (context) {
                  return const [
                    PopupMenuItem(
                        value: Locale('uz', 'UZ'), child: Text("🇺🇿 UZ")),
                    PopupMenuItem(
                        value: Locale('en', 'US'), child: Text("🇺🇸 EN")),
                    PopupMenuItem(
                        value: Locale('ru', 'RU'), child: Text("🇷🇺 RU")),
                  ];
                },
                icon: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    border: Border.all(color: Colors.red),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.language, color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-0.9, -0.85),
              child: Column(
                children: [
                  CupertinoSwitch(
                    value: _lights,
                    onChanged: (bool value) {
                      setState(() {
                        _lights = value;
                      });
                    },
                  ),
                  Text(
                    "auto_slide".tr(),
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
