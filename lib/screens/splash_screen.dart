import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space_encyclopedia/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Transform.scale(
              scaleY: 3.2,
              scaleX: 3,
              child: const Image(
                image: AssetImage('assets/images/solar_system.gif'),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.7),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
              child: Text(
                "Explore\nthe Solar System\nWith us!",
                textAlign: TextAlign.center,
                textScaleFactor: 1.3,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 23,
                  height: 1.45,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
