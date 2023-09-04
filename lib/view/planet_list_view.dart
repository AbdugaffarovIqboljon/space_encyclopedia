import 'dart:ui';

import 'package:flutter/material.dart';
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
    required this.onTap, required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          children: [
            Transform.scale(
              scaleY: scaleY,
              scaleX: scaleX,
              child: GestureDetector(
                onTap: onTap,
                child: Hero(
                  tag: tag,
                  transitionOnUserGestures: true,
                  child: Image(
                    height: MediaQuery.sizeOf(context).height * 0.35,
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    image: assetImage,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Text(
                planetName,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Expanded(
              child: Container(
                height: 175,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Stack(
                      children: [
                        BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                          child: Container(),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.white.withOpacity(0.15),
                                Colors.white.withOpacity(0.05),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                description,
                                style: GoogleFonts.poppins(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                kilometresFromTheSun,
                                style: GoogleFonts.poppins(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                size,
                                style: GoogleFonts.poppins(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                temperature,
                                style: GoogleFonts.poppins(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                additionalInfo,
                                style: GoogleFonts.poppins(
                                  fontSize: 19,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
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
      ),
    );
  }
}
